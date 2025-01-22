import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hakaton_project/feature/select_mission/data/i_missions_repository.dart';
import 'package:hakaton_project/feature/select_mission/model/mission_entity.dart';

part 'select_mission_state.dart';
part 'select_mission_event.dart';
part 'select_mission_bloc.freezed.dart';

// @freezed
class SelectMissionBloc extends Bloc<SelectMissionsEvent, SelectMissionState> {
/* -------------------------------------------------------------------------- */
  final IMissionsRepository repository;
/* -------------------------------------------------------------------------- */
  SelectMissionBloc({
    required this.repository,
    SelectMissionState initialState = const SelectMissionState.idle(),
  }) : super(
          initialState,
        ) {
    on<SelectMissionsEvent>(
      (event, emit) => event.map(
        fetchMissions: (e) => _fetchMissions(
          e,
          emit,
        ),
      ),
    );
  }

  Future<void> _fetchMissions(
    _FetchMissions event,
    Emitter<SelectMissionState> emit,
  ) async {
    emit(const SelectMissionState.loading());
    try {
      final missions = await repository.getMissions();
      emit(SelectMissionState.loaded(missions: missions));
    } catch (error) {
      emit(SelectMissionState.error(error: error));
      rethrow;
    }
  }
/* -------------------------------------------------------------------------- */
}
