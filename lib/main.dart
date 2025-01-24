import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hakaton_project/feature/select_mission/bloc/missions_bloc.dart';
import 'package:hakaton_project/feature/select_mission/widget/missions_provider.dart';
import 'package:hakaton_project/feature/select_mission/widget/view/missions_list_view.dart';
import 'package:hakaton_project/feature/auth/login_screen.dart';
import 'package:hakaton_project/feature/auth/data/auth_repository.dart';
import 'package:hakaton_project/feature/auth/model/user_info.dart';
import 'package:hakaton_project/feature/auth/model/user_role.dart';
import 'package:hakaton_project/feature/sides/data/sides_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  UserInfo? _userInfo;
  String? _authToken;
  late final AuthRepository _authRepository;
  late final Dio _dio;
  late final SidesRepository _sidesRepository;

  @override
  void initState() {
    super.initState();
    _dio = Dio();
    _authRepository = AuthRepository(_dio);
    _sidesRepository = SidesRepository(_dio);
  }

  Future<void> _handleLogin(String username, String password) async {
    try {
      // Создаем Basic Auth token
      final token = base64Encode(utf8.encode('$username:$password'));
      
      // Обновляем настройки Dio для запроса информации о пользователе
      _dio.options = BaseOptions(
        baseUrl: 'http://localhost:8000/api',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Basic $token',
        },
      );

      final userInfo = await _authRepository.login(username, password);
      setState(() {
        _userInfo = userInfo;
        _authToken = token;
      });
    } catch (e) {
      // TODO: Показать ошибку пользователю
      print('Login error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Missions App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: _userInfo == null
          ? LoginScreen(onLogin: _handleLogin)
          : Scaffold(
              appBar: AppBar(
                title: Text('Missions - ${_userInfo!.firstName} ${_userInfo!.lastName}'),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.logout),
                    onPressed: () {
                      setState(() {
                        _userInfo = null;
                        _authToken = null;
                      });
                    },
                  ),
                ],
              ),
              body: MissionsProvider(
                authToken: _authToken!,
                child: MissionsListView(
                  sidesRepository: _sidesRepository,
                  isOrganizer: _userInfo!.role == UserRole.organizer,
                  isCommander: _userInfo!.role == UserRole.commander,
                ),
              ),
            ),
    );
  }
}
