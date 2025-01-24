import 'user_role.dart';

class UserInfo {
  final int id;
  final String username;
  final String firstName;
  final String lastName;
  final UserRole role;

  UserInfo({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.role,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      id: json['id'],
      username: json['username'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      role: UserRole.fromString(json['role'])
    );
  }
}
