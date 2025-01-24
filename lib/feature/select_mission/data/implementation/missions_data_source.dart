import 'package:dio/dio.dart';
import 'package:hakaton_project/core/mission_endpoints.dart';
import 'package:hakaton_project/feature/select_mission/data/i_missions_data_source.dart';
import 'package:hakaton_project/feature/select_mission/model/mission_d_t_o.dart';

class MissionsDataSource implements IMissionsDataSource {
/* -------------------------------------------------------------------------- */
  final Dio client;
/* -------------------------------------------------------------------------- */
  final MissionEndpoints endpoint;
/* -------------------------------------------------------------------------- */
  const MissionsDataSource({
    required this.client,
    required this.endpoint,
  });
/* -------------------------------------------------------------------------- */
  @override
  Future<List<MissionDTO>> getMissions() async {
    return [
      MissionDTO(
        id: '1',
        name: 'Миссия чернобыль',
        number: '1',
        teams: ['team1', 'team2', 'team3'],
        status: true,
      ),
      MissionDTO(
        id: 'id',
        name: 'Охота на глухаря',
        number: '2',
        teams: ['teams'],
        status: false,
      ),
    ];
    // try {
    //   // final response = await client.get(
    //   //   endpoint.missions,
    //   // );
    //   // if (response.statusCode == 200) {
    //   //   List<dynamic> jsonData = response.data;
    //   //   final missionsList =
    //   //       jsonData.map((mission) => MissionDTO.fromJson(mission)).toList();
    //   //   return missionsList;
    //   // }
    // } on DioException catch (e) {
    //   if (kDebugMode) {
    //     if (e.response != null) {
    //       print(e.response!.data);
    //       print(e.response!.headers);
    //       print(e.response!.requestOptions);
    //     } else {
    //       print(e.requestOptions);
    //       print(e.message);
    //     }
    //   }
    // } catch (e) {
    //   rethrow;
    // }
    // throw const FormatException('Invalid response');
  }
/* -------------------------------------------------------------------------- */
}
