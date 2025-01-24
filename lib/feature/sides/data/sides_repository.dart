import 'package:dio/dio.dart';
import '../../../feature/select_mission/model/dto.dart';

class SidesRepository {
  final Dio _dio;
  final String _baseUrl = 'http://localhost:8000/api';

  SidesRepository(this._dio);

  Future<List<SideDto>> getSides() async {
    try {
      final response = await _dio.get('$_baseUrl/sides/');
      final List<dynamic> data = response.data;
      return data.map((json) => SideDto.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to fetch sides: $e');
    }
  }
}
