import 'package:hakaton_project/feature/select_mission/data/i_missions_data_source.dart';
import 'package:hakaton_project/feature/select_mission/data/i_missions_repository.dart';
import 'package:hakaton_project/feature/select_mission/model/mission_entity.dart';

class MissionsRepository implements IMissionsRepository {
/* -------------------------------------------------------------------------- */
  final IMissionsDataSource _dataSource;
/* -------------------------------------------------------------------------- */
  MissionsRepository(
    this._dataSource,
  );
/* -------------------------------------------------------------------------- */
  @override
  Future<List<MissionEntity>> getMissions() async {
    final listDto = await _dataSource.getMissions();
    final entity = listDto.map((e) => e.toEntity()).toList();
    return entity;
  }
/* -------------------------------------------------------------------------- */
}
