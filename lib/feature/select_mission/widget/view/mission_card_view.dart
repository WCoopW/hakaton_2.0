import 'package:flutter/material.dart';

class MissionCardView extends StatelessWidget {
  final String missionName;
  final String date;
  final Function() onTap;
  const MissionCardView({
    super.key,
    required this.missionName,
    required this.date,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          width: double.infinity,
          height: 78,
          decoration: BoxDecoration(
            border: Border.all(
              color: theme.dividerColor,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: SizedBox.expand(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 5),
                  child: Text(
                    date,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    missionName,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}