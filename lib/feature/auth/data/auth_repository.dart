import 'dart:convert';
import 'package:dio/dio.dart';
import '../model/user_info.dart';

class AuthRepository {
  final Dio _dio;
  final String _baseUrl = 'http://localhost:8000/api';

  AuthRepository(this._dio);

  Future<UserInfo> login(String username, String password) async {
    try {
      // Получаем информацию о пользователе
      final response = await _dio.get(
        '$_baseUrl/users/me/',
      );

      return UserInfo.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to login: $e');
    }
  }
}
