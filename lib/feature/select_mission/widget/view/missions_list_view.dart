import 'package:flutter/material.dart';
import 'package:hakaton_project/feature/select_mission/widget/missions_scope.dart';
import 'package:hakaton_project/feature/select_mission/widget/view/mission_card_view.dart';

class MissionsListView extends StatefulWidget {
  const MissionsListView({super.key});

  @override
  State<MissionsListView> createState() => _MissionsListViewState();
}

class _MissionsListViewState extends State<MissionsListView> {
/* -------------------------------------------------------------------------- */
  @override
  void initState() {
    MissionsScope.of(context, listen: false).fetchMissions();
    super.initState();
  }

/* -------------------------------------------------------------------------- */
  @override
  Widget build(BuildContext context) {
    final scope = MissionsScope.of(context);
    return SizedBox(
      height: 250,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        children: [
          for (var mission in scope.missions) ...[
            MissionCardView(
              missionName: mission.missionName,
              date: mission.missionDate,
              onTap: () => scope.onCardTap(
                mission.missionId.toString(),
              ),
            ),
            const SizedBox(height: 8),
          ],
          if (MissionsScope.Missions.isEmpty)
            TextButton(
              onPressed: () => MissionsScope.fetchMissions(),
              child: const Text('Попробовать снова'),
            )
        ],
      ),
    );
  }
}
