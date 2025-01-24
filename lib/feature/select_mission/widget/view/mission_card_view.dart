import 'package:flutter/material.dart';
import 'package:hakaton_project/feature/select_mission/model/mission_entity.dart';

class MissionCardView extends StatelessWidget {
  final Function() onTap;
  final MissionEntity mission;

  const MissionCardView({
    super.key,
    required this.mission,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SizedBox(
          child: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: SizedBox(
                  height: 40,
                  child: Flex(
                    direction: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: SizedBox(
                          width: 62,
                          child: Text(
                            '№${mission.number}',
                            style: TextStyle(
                              color: mission.status
                                  ? Color(0xff2c2c2c)
                                  : Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                      Flex(
                        direction: Axis.vertical,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 250,
                            child: Text(
                              switch (mission.status) {
                                true => '${mission.name} (ВЫПОЛНЕНО)',
                                false => mission.name
                              },
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: mission.status
                                    ? const Color(0xff2c2c2c)
                                    : Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Text(
                            mission.teams.join(', '),
                            style: const TextStyle(
                              color: Color(0xff777777),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 48,
                      )
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Color(
                  0xff2c2c2c,
                ),
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
