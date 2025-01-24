import 'package:hakaton_project/feature/select_mission/model/dto.dart';

abstract interface class IMissionsDataSource {
/* -------------------------------------------------------------------------- */
  Future<List<MissionDto>> getMissions();
/* -------------------------------------------------------------------------- */
}
