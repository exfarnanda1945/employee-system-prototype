import 'package:employee_system_prototype/model/presence.dart';
import 'package:employee_system_prototype/utils/colors.dart';
import 'package:flutter/material.dart';

class HomePresenceItem extends StatelessWidget {
  final Presence item;

  const HomePresenceItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${item.date} ",
                style: const TextStyle(
                  color: davyGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              Text(
                "${item.enter} - ${item.out}",
                style: TextStyle(
                  color: item.isLate ? redChest : davyGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              height: 2,
              color: lightGray,
            ),
          ),
        ],
      ),
    );
  }
}
