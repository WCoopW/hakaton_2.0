import '../../model/dto.dart';

abstract class IMissionsRepository {
  Future<List<MissionDto>> getMissions();
  Future<void> updateMissionStatus(int missionId, String status);
  Future<void> assignMissionToTeam(int missionId, int teamId);
  Future<void> assignMissionToSide(int missionId, int sideId, bool assign);
}
