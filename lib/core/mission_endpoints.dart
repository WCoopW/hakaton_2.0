import 'package:hakaton_project/core/base_endpoints.dart';

class MissionEndpoints extends Endpoints {
/* -------------------------------------------------------------------------- */
  final String _missions;
/* -------------------------------------------------------------------------- */
  MissionEndpoints({
    required super.baseUrl,
    required super.apiVersion,
    required String missions,
  }) : _missions = missions;
/* -------------------------------------------------------------------------- */
  String get missions => buildApiEndpoint(_missions);
/* -------------------------------------------------------------------------- */
}
