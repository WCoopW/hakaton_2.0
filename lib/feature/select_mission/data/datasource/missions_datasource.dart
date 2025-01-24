import 'package:dio/dio.dart';
import '../../model/dto.dart';

abstract class IMissionsDataSource {
  Future<List<MissionDto>> getMissions();
  Future<void> updateMissionStatus(int missionId, String status);
  Future<void> assignMissionToTeam(int missionId, int teamId);
  Future<void> assignMissionToSide(int missionId, int sideId, bool assign);
}

class MissionsDataSourceImpl implements IMissionsDataSource {
  final Dio _dio;
  final String _baseUrl = 'http://localhost:8000/api';

  MissionsDataSourceImpl(this._dio);

  @override
  Future<List<MissionDto>> getMissions() async {
    try {
      final response = await _dio.get('$_baseUrl/missions/');
      
      if (response.data is List) {
        final List<dynamic> data = response.data;
        return data.map((json) => MissionDto.fromJson(json)).toList();
      } else if (response.data is Map && response.data['data'] != null) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => MissionDto.fromJson(json)).toList();
      }
      
      throw Exception('Unexpected response format');
    } catch (e) {
      throw Exception('Failed to fetch missions: $e');
    }
  }

  @override
  Future<void> updateMissionStatus(int missionId, String status) async {
    try {
      await _dio.post(
        '$_baseUrl/missions/$missionId/update_status/',
        data: UpdateMissionStatusRequest(status: status).toJson(),
      );
    } catch (e) {
      throw Exception('Failed to update mission status: $e');
    }
  }

  @override
  Future<void> assignMissionToTeam(int missionId, int teamId) async {
    try {
      await _dio.post(
        '$_baseUrl/mission-assignments/',
        data: AssignMissionToTeamRequest(
          missionId: missionId,
          teamId: teamId,
        ).toJson(),
      );
    } catch (e) {
      throw Exception('Failed to assign mission to team: $e');
    }
  }

  @override
  Future<void> assignMissionToSide(int missionId, int sideId, bool assign) async {
    try {
      if (assign) {
        await _dio.post(
          '$_baseUrl/missions/$missionId/assign_side/',
          data: AssignMissionToSideRequest(
            missionId: missionId,
            sideIds: [sideId],
          ).toJson(),
        );
      } else {
        await _dio.delete(
          '$_baseUrl/missions/$missionId/remove_side/$sideId/',
        );
      }
    } catch (e) {
      throw Exception('Failed to ${assign ? 'assign' : 'unassign'} mission to side: $e');
    }
  }
}
