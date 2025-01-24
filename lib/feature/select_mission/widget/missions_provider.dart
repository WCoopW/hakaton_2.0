import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import '../bloc/missions_bloc.dart';
import '../data/datasource/missions_datasource.dart';
import '../data/repository/missions_repository.dart';

class MissionsProvider extends StatelessWidget {
  final Widget child;
  final bool isOrganizer;
  final bool isCommander;
  final String? authToken;

  const MissionsProvider({
    super.key,
    required this.child,
    this.isOrganizer = false,
    this.isCommander = false,
    this.authToken,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MissionsBloc>(
          create: (context) => MissionsBloc(
            MissionsRepository(
              MissionsDataSourceImpl(
                Dio()
                  ..options = BaseOptions(
                    baseUrl: 'http://localhost:8000/api',
                    headers: {
                      'Content-Type': 'application/json',
                      if (authToken != null) 'Authorization': 'Basic $authToken',
                    },
                  ),
              ),
            ),
          )..add(LoadMissionsEvent()),
        ),
      ],
      child: child,
    );
  }
}
