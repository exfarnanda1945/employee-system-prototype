import 'package:employee_system_prototype/model/presence.dart';
import 'package:employee_system_prototype/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'home-presence-item.dart';

class HomePresenceInfo extends StatelessWidget {
  const HomePresenceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Text(
                'Live Presence',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              Text(
                '09:41 AM',
                style: TextStyle(
                  color: blueberry,
                  fontSize: 34,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              Text(
                'Mon, 18 April 2023',
                style: TextStyle(
                  color: davyGrey,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
          child: Container(
            height: 2,
            color: lightGray,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              const Text(
                'Office Hours',
                style: TextStyle(
                  color: davyGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  '08:00 -  17:00',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 15, left: 22, right: 22),
                child: ElevatedButton(
                    onPressed: () {
                      context.pushNamed("auto-presence");
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                        backgroundColor: blueberry,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                    child: const Text(
                      'Clock In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    )),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Container(
            height: 2,
            color: lightGray,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.history,
                    color: Colors.black,
                  ),
                  Text(
                    'Presence History',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  )
                ],
              ),
              ListView.builder(
                itemCount: presenceThisWeeks.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final item = presenceThisWeeks[index];
                  return HomePresenceItem(item: item);
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
