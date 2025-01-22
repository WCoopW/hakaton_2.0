import 'package:hakaton_project/feature/select_mission/model/mission_entity.dart';

abstract interface class IMissionsRepository {
/* -------------------------------------------------------------------------- */
  Future<List<MissionEntity>> getMissions();
/* -------------------------------------------------------------------------- */
}
