// Data Transfer Objects for Flutter mobile application

// User DTO
import 'package:hakaton_project/feature/select_mission/model/mission_entity.dart';

class UserDto {
  final int id;
  final String username;
  final String firstName;
  final String lastName;

  UserDto({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) {
    return UserDto(
      id: json['id'],
      username: json['username'],
      firstName: json['first_name'],
      lastName: json['last_name'],
    );
  }
}

// Side DTO
class SideDto {
  final int id;
  final String name;
  final UserDto? commander;

  SideDto({
    required this.id,
    required this.name,
    this.commander,
  });

  factory SideDto.fromJson(Map<String, dynamic> json) {
    return SideDto(
      id: json['id'],
      name: json['name'],
      commander: json['commander'] != null 
          ? UserDto.fromJson(json['commander']) 
          : null,
    );
  }
}

// Team DTO
class TeamDto {
  final int id;
  final String name;
  final SideDto side;

  TeamDto({
    required this.id,
    required this.name,
    required this.side,
  });

  factory TeamDto.fromJson(Map<String, dynamic> json) {
    return TeamDto(
      id: json['id'],
      name: json['name'],
      side: SideDto.fromJson(json['side']),
    );
  }
}

// Mission status constants
class MissionStatus {
  static const String available = 'AV';
  static const String inProgress = 'IP';
  static const String completed = 'CO';
  static const String failed = 'FA';
}

// Mission DTO
class MissionDto {
  final int id;
  final String title;
  final String description;
  final DateTime createdAt;
  final List<SideDto> availableSides;
  final int points;
  final String status;
  final String statusDisplay;

  MissionDto({
    required this.id,
    required this.title,
    required this.description,
    required this.createdAt,
    required this.availableSides,
    required this.points,
    required this.status,
    required this.statusDisplay,
  });

  factory MissionDto.fromJson(Map<String, dynamic> json) {
    return MissionDto(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      createdAt: DateTime.parse(json['created_at']),
      availableSides: (json['available_sides'] as List)
          .map((side) => SideDto.fromJson(side))
          .toList(),
      points: json['points'],
      status: json['status'],
      statusDisplay: json['status_display'],
    );
  }

  // Вспомогательные геттеры для проверки статуса
  bool get isAvailable => status == MissionStatus.available;
  bool get isInProgress => status == MissionStatus.inProgress;
  bool get isCompleted => status == MissionStatus.completed;
  bool get isFailed => status == MissionStatus.failed;

  MissionEntity toEntity() {
    return MissionEntity(
      id: id.toString(),
      number: title,
      teams: availableSides.map((side) => side.name).toList(),
      status: isCompleted,
    );
  }
}

// Request DTOs для создания и обновления

// Для организатора: назначение миссии стороне
class AssignMissionToSideRequest {
  final int missionId;
  final List<int> sideIds;

  AssignMissionToSideRequest({
    required this.missionId,
    required this.sideIds, 
  });

  Map<String, dynamic> toJson() => {
    'mission_id': missionId,
    'available_side_ids': sideIds,
  };
}

// Для командира: назначение миссии команде
class AssignMissionToTeamRequest {
  final int missionId;
  final int teamId;

  AssignMissionToTeamRequest({
    required this.missionId,
    required this.teamId,
  });

  Map<String, dynamic> toJson() => {
    'mission_id': missionId,
    'team_id': teamId,
  };
}

// Для организатора: обновление статуса миссии
class UpdateMissionStatusRequest {
  final String status;

  UpdateMissionStatusRequest({
    required this.status,
  }) : assert(
          status == MissionStatus.available ||
              status == MissionStatus.inProgress ||
              status == MissionStatus.completed ||
              status == MissionStatus.failed,
          'Invalid status value. Must be one of: AV, IP, CO, FA',
        );

  Map<String, dynamic> toJson() => {
        'status': status,
      };
}

// Response wrapper для обработки ошибок
class ApiResponse<T> {
  final T? data;
  final String? error;
  final bool success;

  ApiResponse({
    this.data,
    this.error,
    required this.success,
  });

  factory ApiResponse.success(T data) {
    return ApiResponse(
      data: data,
      success: true,
    );
  }

  factory ApiResponse.error(String error) {
    return ApiResponse(
      error: error,
      success: false,
    );
  }
}
