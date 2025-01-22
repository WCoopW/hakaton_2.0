part of 'select_mission_bloc.dart';

@freezed
class SelectMissionsEvent with _$SelectMissionsEvent {
/* -------------------------------------------------------------------------- */
  const factory SelectMissionsEvent.fetchMissions() = _FetchMissions;
/* -------------------------------------------------------------------------- */
}
