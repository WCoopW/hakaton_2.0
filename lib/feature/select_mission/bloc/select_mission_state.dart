part of 'select_mission_bloc.dart';

@freezed
class SelectMissionState with _$SelectMissionState {
/* ------------------------------- Constructor ------------------------------ */
  const SelectMissionState._();
/* -------------------------------------------------------------------------- */
  const factory SelectMissionState.idle({
    @Default(<MissionEntity>[]) List<MissionEntity> missions,
  }) = _Idle;
/* -------------------------------------------------------------------------- */
  const factory SelectMissionState.loading({
    @Default(<MissionEntity>[]) List<MissionEntity> missions,
  }) = _Loading;
/* -------------------------------------------------------------------------- */
  const factory SelectMissionState.loaded({
    required List<MissionEntity> missions,
  }) = _Loaded;
/* -------------------------------------------------------------------------- */
  const factory SelectMissionState.error({
    @Default(<MissionEntity>[]) List<MissionEntity> missions,
    Object? error,
  }) = _Error;
/* -------------------------------------------------------------------------- */
  Object? get error => maybeMap(
        orElse: () => null,
        error: (e) => e.error,
      );
}
