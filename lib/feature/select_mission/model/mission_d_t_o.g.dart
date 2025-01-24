// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_d_t_o.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MissionDTO _$MissionDTOFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'number', 'teams', 'status', 'name'],
  );
  return MissionDTO(
    id: json['id'] as String,
    number: json['number'] as String,
    teams: (json['teams'] as List<dynamic>).map((e) => e as String).toList(),
    status: json['status'] as bool,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$MissionDTOToJson(MissionDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'teams': instance.teams,
      'status': instance.status,
      'name': instance.name,
    };
