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
    final theme = Theme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.primaryColor,
      ),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 18),
            Text(
              "Выберите игру",
              style: theme.textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            const Spacer(flex: 10),
            const Expanded(
              flex: 38,
              child: MissionsScope(
                child: MissionsListView(),
              ),
            ),
            const Spacer(flex: 2),
            const Spacer(flex: 8)
          ],
        ),
      ),
    );
  }
}
