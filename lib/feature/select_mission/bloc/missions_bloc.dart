import 'package:bloc/bloc.dart';
import '../data/repository/missions_repository.dart';
import '../model/dto.dart';

// Events
abstract class MissionsEvent {}

class LoadMissionsEvent extends MissionsEvent {}

class UpdateMissionStatusEvent extends MissionsEvent {
  final int missionId;
  final String status;

  UpdateMissionStatusEvent(this.missionId, this.status);
}

class AssignMissionToTeamEvent extends MissionsEvent {
  final int missionId;
  final int teamId;

  AssignMissionToTeamEvent(this.missionId, this.teamId);
}

class AssignMissionToSideEvent extends MissionsEvent {
  final int missionId;
  final int sideId;
  final bool assign; // true to assign, false to unassign

  AssignMissionToSideEvent(this.missionId, this.sideId, this.assign);
}

// States
abstract class MissionsState {}

class MissionsInitial extends MissionsState {}

class MissionsLoading extends MissionsState {
  final String? message;
  
  MissionsLoading([this.message]);
}

class MissionsLoaded extends MissionsState {
  final List<MissionDto> missions;

  MissionsLoaded(this.missions);
}

class MissionsError extends MissionsState {
  final String message;

  MissionsError(this.message);
}

// BLoC
class MissionsBloc extends Bloc<MissionsEvent, MissionsState> {
  final MissionsRepository _repository;

  MissionsBloc(this._repository) : super(MissionsInitial()) {
    on<LoadMissionsEvent>(_onLoadMissions);
    on<UpdateMissionStatusEvent>(_onUpdateMissionStatus);
    on<AssignMissionToTeamEvent>(_onAssignMissionToTeam);
    on<AssignMissionToSideEvent>(_onAssignMissionToSide);
  }

  Future<void> _onLoadMissions(
    LoadMissionsEvent event,
    Emitter<MissionsState> emit,
  ) async {
    emit(MissionsLoading('Loading missions...'));
    try {
      final missions = await _repository.getMissions();
      emit(MissionsLoaded(missions));
    } catch (e) {
      emit(MissionsError(e.toString()));
    }
  }

  Future<void> _onUpdateMissionStatus(
    UpdateMissionStatusEvent event,
    Emitter<MissionsState> emit,
  ) async {
    emit(MissionsLoading('Updating mission status...'));
    try {
      await _repository.updateMissionStatus(event.missionId, event.status);
      add(LoadMissionsEvent()); // Reload missions after update
    } catch (e) {
      emit(MissionsError(e.toString()));
    }
  }

  Future<void> _onAssignMissionToTeam(
    AssignMissionToTeamEvent event,
    Emitter<MissionsState> emit,
  ) async {
    emit(MissionsLoading('Assigning mission to team...'));
    try {
      await _repository.assignMissionToTeam(event.missionId, event.teamId);
      add(LoadMissionsEvent()); // Reload missions after assignment
    } catch (e) {
      emit(MissionsError(e.toString()));
    }
  }

  Future<void> _onAssignMissionToSide(
    AssignMissionToSideEvent event,
    Emitter<MissionsState> emit,
  ) async {
    emit(MissionsLoading(event.assign 
      ? 'Assigning side to mission...' 
      : 'Removing side from mission...'));
    try {
      await _repository.assignMissionToSide(
        event.missionId,
        event.sideId,
        event.assign,
      );
      add(LoadMissionsEvent()); // Reload missions after assignment
    } catch (e) {
      emit(MissionsError(e.toString()));
    }
  }
}
