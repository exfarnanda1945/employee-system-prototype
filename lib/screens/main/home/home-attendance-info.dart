import 'package:employee_system_prototype/model/attendance.dart';
import 'package:employee_system_prototype/utils/colors.dart';
import 'package:flutter/material.dart';

class HomeAttendanceInfo extends StatelessWidget {
  const HomeAttendanceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Text(
                'Live Attendance',
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
                    top: 30, bottom: 15, left: 22, right: 22),
                child: ElevatedButton(
                    onPressed: () {},
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
          padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.history,
                    color: Colors.black,
                  ),
                  Text(
                    'Attendance History',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  )
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    children: [
                      buildAttendanceItem(),
                      buildAttendanceItem(),
                      buildAttendanceItem(),
                      buildAttendanceItem(),
                      buildAttendanceItem(),
                      buildAttendanceItem()
                    ],
                  ))
            ],
          ),
        )
      ],
    );
  }

  buildAttendanceItem() {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Monday, 11 December 2023 ",
                style: TextStyle(
                  color: davyGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              Text(
                "07:45 - 17:00",
                style: TextStyle(
                  color: davyGrey,
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
