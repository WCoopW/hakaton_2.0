import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hakaton_project/feature/select_mission/model/mission_entity.dart';

part 'mission_d_t_o.g.dart';

@JsonSerializable()
class MissionDTO {
/* -------------------------------------------------------------------------- */
  @JsonKey(name: 'id', required: true)
  final String id;
/* -------------------------------------------------------------------------- */
  @JsonKey(name: 'number', required: true)
  final String number;
/* -------------------------------------------------------------------------- */
  @JsonKey(name: 'teams', required: true)
  final List<String> teams;
/* -------------------------------------------------------------------------- */
  @JsonKey(name: 'status', required: true)
  final bool status;
/* -------------------------------------------------------------------------- */
  MissionDTO({
    required this.id,
    required this.number,
    required this.teams,
    required this.status,
  });
/* -------------------------------------------------------------------------- */
  factory MissionDTO.fromJson(Map<String, dynamic> json) =>
      _$MissionDTOFromJson(
        json,
      );
/* -------------------------------------------------------------------------- */
  MissionEntity toEntity() => MissionEntity(
        id: id,
        number: number,
        teams: teams,
        status: status,
      );
/* -------------------------------------------------------------------------- */
}
