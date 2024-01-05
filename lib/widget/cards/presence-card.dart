import 'package:employee_system_prototype/model/presence.dart';
import 'package:employee_system_prototype/utils/colors.dart';
import 'package:flutter/material.dart';

class PresenceCard extends StatelessWidget {
  const PresenceCard({super.key, required this.presence});

  final Presence presence;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Card(
        surfaceTintColor: Colors.white,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 2,
        child: Row(
          children: [
            Container(
              height: 100,
              width: 15,
              color: presence.isLate ? redChest : blueberry,
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(presence.date,
                    style: const TextStyle(
                      color: davyGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      height: 0,
                    )),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.login,
                          color: blueberry,
                        ),
                       const SizedBox(
                          width: 10,
                        ),
                        Text(
                          presence.enter,
                          style: const TextStyle(
                            color: blueberry,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.logout,
                            color: redChest,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            presence.out,
                            style: const TextStyle(
                              color: redChest,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
