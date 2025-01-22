import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hakaton_project/core/core_extensions.dart';
import 'package:hakaton_project/core/mission_endpoints.dart';
import 'package:hakaton_project/feature/select_mission/bloc/select_mission_bloc.dart';
import 'package:hakaton_project/feature/select_mission/data/implementation/missions_data_source.dart';
import 'package:hakaton_project/feature/select_mission/data/implementation/missions_repository.dart';
import 'package:hakaton_project/feature/select_mission/model/mission_entity.dart';

class MissionsScope extends StatefulWidget {
/* ------------------------------- Constructor ------------------------------ */
  const MissionsScope({
    required this.child,
    super.key,
  });
/* -------------------------------------------------------------------------- */
  final Widget child;
/* -------------------------------------------------------------------------- */

  static MissionsScopeState of(
    BuildContext context, {
    bool listen = true,
  }) =>
      context
          .inhOf<_MissionsInherited>(
            listen: listen,
          )
          .scopeState;

  @override
  State<MissionsScope> createState() => MissionsScopeState();
}

class MissionsScopeState extends State<MissionsScope> {
/* -------------------------------------------------------------------------- */
  late final SelectMissionBloc _selectMissionBloc;
/* -------------------------------------------------------------------------- */
  late final StreamSubscription<void> _streamSubscription;
/* -------------------------------------------------------------------------- */
  var _missionsBlocState = const SelectMissionState.idle();
/* -------------------------------------------------------------------------- */
  String get selectedMission => _selectedMission;
/* -------------------------------------------------------------------------- */
  static const String _selectedMission = '0';
/* -------------------------------------------------------------------------- */
  List<MissionEntity> get missions => _missionsBlocState.missions;
/* -------------------------------------------------------------------------- */
  @override
  void initState() {
    super.initState();
    _selectMissionBloc = SelectMissionBloc(
      repository: MissionsRepository(
        MissionsDataSource(
          client: Dio(),
          endpoint: MissionEndpoints(
            baseUrl: '',
            apiVersion: '',
            missions: '',
          ),
        ),
      ),
      initialState: _missionsBlocState,
    );
    _streamSubscription = _selectMissionBloc.stream.listen(_didStateChanged);
  }

/* -------------------------------------------------------------------------- */
  @override
  void dispose() {
    _selectMissionBloc.close();
    _streamSubscription.cancel();
    super.dispose();
  }
/* -------------------------------------------------------------------------- */

  void _didStateChanged(SelectMissionState state) {
    if (state != _missionsBlocState) {
      setState(
        () => _missionsBlocState = state,
      );
    }
  }

/* -------------------------------------------------------------------------- */
  /// The error message.
  String? get error {
    final error = _missionsBlocState.error;
    if (error != null) {
      return error.toString();
    }
    return null;
  }

/* -------------------------------------------------------------------------- */
  void fetchMissions() {
    _selectMissionBloc.add(
      const SelectMissionsEvent.fetchMissions(),
    );
  }

/* -------------------------------------------------------------------------- */
  void onCardTap(String missionId) {}
/* -------------------------------------------------------------------------- */

  @override
  Widget build(BuildContext context) => _MissionsInherited(
        state: _missionsBlocState,
        scopeState: this,
        child: widget.child,
      );
/* -------------------------------------------------------------------------- */
}

class _MissionsInherited extends InheritedWidget {
/* -------------------------------------------------------------------------- */
  const _MissionsInherited({
    required super.child,
    required this.state,
    required this.scopeState,
  });
/* -------------------------------------------------------------------------- */
  final SelectMissionState state;
/* -------------------------------------------------------------------------- */
  final MissionsScopeState scopeState;
/* -------------------------------------------------------------------------- */
  @override
  bool updateShouldNotify(
    _MissionsInherited oldWidget,
  ) =>
      state != oldWidget.state;
/* -------------------------------------------------------------------------- */
}
