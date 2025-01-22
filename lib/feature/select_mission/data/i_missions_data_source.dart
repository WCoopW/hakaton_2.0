import 'package:hakaton_project/feature/select_mission/model/mission_d_t_o.dart';

abstract interface class IMissionsDataSource {
/* -------------------------------------------------------------------------- */
  Future<List<MissionDTO>> getMissions();
/* -------------------------------------------------------------------------- */
}
