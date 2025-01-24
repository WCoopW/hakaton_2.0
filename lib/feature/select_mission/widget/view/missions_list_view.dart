import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hakaton_project/feature/select_mission/bloc/missions_bloc.dart';
import 'package:hakaton_project/feature/select_mission/model/dto.dart';
import 'package:hakaton_project/feature/sides/data/sides_repository.dart';

class MissionsListView extends StatefulWidget {
  final bool isOrganizer;
  final bool isCommander;
  final SidesRepository sidesRepository;

  const MissionsListView({
    super.key,
    required this.sidesRepository,
    this.isOrganizer = false,
    this.isCommander = false,
  });

  @override
  State<MissionsListView> createState() => _MissionsListViewState();
}

class _MissionsListViewState extends State<MissionsListView> {
  List<SideDto>? _allSides;

  @override
  void initState() {
    super.initState();
    context.read<MissionsBloc>().add(LoadMissionsEvent());
    _loadSides();
  }

  Future<void> _loadSides() async {
    try {
      final sides = await widget.sidesRepository.getSides();
      setState(() {
        _allSides = sides;
      });
    } catch (e) {
      // Показываем ошибку только если пользователь - организатор
      if (widget.isOrganizer) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to load sides: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  void _showMissionOptionsDialog(BuildContext context, MissionDto mission) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Mission Options'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.update),
                title: const Text('Update Status'),
                onTap: () {
                  Navigator.pop(context);
                  _showStatusUpdateDialog(context, mission);
                },
              ),
              ListTile(
                leading: const Icon(Icons.group),
                title: const Text('Manage Sides'),
                onTap: () {
                  Navigator.pop(context);
                  _showManageSidesDialog(context, mission);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showStatusUpdateDialog(BuildContext context, MissionDto mission) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Update Mission Status'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('Available'),
                selected: mission.status == MissionStatus.available,
                onTap: () {
                  context.read<MissionsBloc>().add(
                        UpdateMissionStatusEvent(
                          mission.id,
                          MissionStatus.available,
                        ),
                      );
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('In Progress'),
                selected: mission.status == MissionStatus.inProgress,
                onTap: () {
                  context.read<MissionsBloc>().add(
                        UpdateMissionStatusEvent(
                          mission.id,
                          MissionStatus.inProgress,
                        ),
                      );
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Completed'),
                selected: mission.status == MissionStatus.completed,
                onTap: () {
                  context.read<MissionsBloc>().add(
                        UpdateMissionStatusEvent(
                          mission.id,
                          MissionStatus.completed,
                        ),
                      );
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Failed'),
                selected: mission.status == MissionStatus.failed,
                onTap: () {
                  context.read<MissionsBloc>().add(
                        UpdateMissionStatusEvent(
                          mission.id,
                          MissionStatus.failed,
                        ),
                      );
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showManageSidesDialog(BuildContext context, MissionDto mission) {
    if (_allSides == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Loading sides...'),
          duration: Duration(seconds: 1),
        ),
      );
      return;
    }

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Manage Mission Sides'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: _allSides!.map((side) {
                final isAssigned = mission.availableSides
                    .any((missionSide) => missionSide.id == side.id);
                return CheckboxListTile(
                  title: Text(side.name),
                  subtitle: side.commander != null
                      ? Text('Commander: ${side.commander!.username}')
                      : null,
                  value: isAssigned,
                  onChanged: (bool? value) {
                    if (value != null) {
                      context.read<MissionsBloc>().add(
                            AssignMissionToSideEvent(
                              mission.id,
                              side.id,
                              value,
                            ),
                          );
                      Navigator.pop(context);
                    }
                  },
                );
              }).toList(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MissionsBloc, MissionsState>(
      builder: (context, state) {
        if (state is MissionsLoading) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularProgressIndicator(),
                if (state.message != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(state.message!),
                  ),
              ],
            ),
          );
        }

        if (state is MissionsError) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Error: ${state.message}',
                  style: const TextStyle(color: Colors.red),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<MissionsBloc>().add(LoadMissionsEvent());
                  },
                  child: const Text('Try Again'),
                ),
              ],
            ),
          );
        }

        if (state is MissionsLoaded) {
          if (state.missions.isEmpty) {
            return const Center(
              child: Text('No missions available'),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: state.missions.length,
            itemBuilder: (context, index) {
              final mission = state.missions[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: ListTile(
                  title: Text(mission.title),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Status: ${mission.statusDisplay}'),
                      Text(
                        'Sides: ${mission.availableSides.map((s) => s.name).join(", ")}',
                      ),
                    ],
                  ),
                  onTap: () {
                    if (widget.isOrganizer) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Organizers cannot modify mission status or sides'),
                          backgroundColor: Colors.red,
                        ),
                      );
                      return;
                    }
                    _showMissionOptionsDialog(context, mission);
                  },
                ),
              );
            },
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
