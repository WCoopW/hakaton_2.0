import 'package:flutter/material.dart';

class CheckboxListTileExample extends StatefulWidget {
  const CheckboxListTileExample({super.key});

  @override
  State<CheckboxListTileExample> createState() =>
      _CheckboxListTileExampleState();
}

class _CheckboxListTileExampleState extends State<CheckboxListTileExample> {
  bool checkboxValue1 = true;
  bool checkboxValue2 = true;
  bool checkboxValue3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c1c1c),
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Выбор команды',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          CheckboxListTile(
            value: checkboxValue1,
            onChanged: (bool? value) {
              setState(() {
                checkboxValue1 = value!;
              });
            },
            title: const Text(
              'Команда 1',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxValue2,
            onChanged: (bool? value) {
              setState(() {
                checkboxValue2 = value!;
              });
            },
            title: const Text(
              'Команда 2',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxValue3,
            onChanged: (bool? value) {
              setState(() {
                checkboxValue3 = value!;
              });
            },
            title: const Text(
              'Команда 3',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          const Divider(height: 0),
        ],
      ),
    );
  }
}
