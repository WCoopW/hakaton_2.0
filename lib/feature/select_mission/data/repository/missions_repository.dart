import '../datasource/missions_datasource.dart';
import '../../model/dto.dart';

abstract class IMissionsRepository {
  Future<List<MissionDto>> getMissions();
  Future<void> updateMissionStatus(int missionId, String status);
  Future<void> assignMissionToTeam(int missionId, int teamId);
  Future<void> assignMissionToSide(int missionId, int sideId, bool assign);
}

class MissionsRepository implements IMissionsRepository {
  final IMissionsDataSource _dataSource;

  MissionsRepository(this._dataSource);

  @override
  Future<List<MissionDto>> getMissions() async {
    return await _dataSource.getMissions();
  }

  @override
  Future<void> updateMissionStatus(int missionId, String status) async {
    await _dataSource.updateMissionStatus(missionId, status);
  }

  @override
  Future<void> assignMissionToTeam(int missionId, int teamId) async {
    await _dataSource.assignMissionToTeam(missionId, teamId);
  }

  @override
  Future<void> assignMissionToSide(int missionId, int sideId, bool assign) async {
    await _dataSource.assignMissionToSide(missionId, sideId, assign);
  }
}
