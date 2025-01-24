import 'package:flutter/material.dart';
import 'package:hakaton_project/feature/select_mission/widget/view/team_checkbox_list.dart';

/// Flutter code sample for [showModalBottomSheet].

class MissionSettingsScreen extends StatelessWidget {
  const MissionSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ModalBottomSheetExample(),
    );
  }
}

class ModalBottomSheetExample extends StatefulWidget {
  const ModalBottomSheetExample({super.key});

  @override
  State<ModalBottomSheetExample> createState() =>
      _ModalBottomSheetExampleState();
}

class _ModalBottomSheetExampleState extends State<ModalBottomSheetExample> {
  bool checkboxValue1 = false;
  bool checkboxValue2 = false;
  bool checkboxValue3 = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 10),
          ElevatedButton(
            child: const Text('showModalBottomSheet'),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                sheetAnimationStyle: AnimationStyle(
                  duration: const Duration(seconds: 1),
                  reverseDuration: const Duration(seconds: 1),
                ),
                builder: (BuildContext context) {
                  return const SizedBox.expand(
                    child: CheckboxListTileExample(),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
