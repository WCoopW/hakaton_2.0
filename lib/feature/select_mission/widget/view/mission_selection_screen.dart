import 'package:flutter/material.dart';
import 'package:hakaton_project/feature/select_mission/widget/missions_scope.dart';
import 'package:hakaton_project/feature/select_mission/widget/view/missions_list_view.dart';

class MissionselectionScreen extends StatelessWidget {
/* -------------------------------------------------------------------------- */
  const MissionselectionScreen({
    super.key,
  });
/* -------------------------------------------------------------------------- */
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff0a0a0b),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Задачи",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Center(
              child: MissionsScope(
                child: MissionsListView(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
