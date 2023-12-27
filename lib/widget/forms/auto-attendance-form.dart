import 'package:employee_system_prototype/utils/colors.dart';
import 'package:flutter/material.dart';

class AutoAttendanceForm extends StatelessWidget {
  const AutoAttendanceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Clock In',
          style: TextStyle(
            color: hanBlue,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 18),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.black,
                    size: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Your Location',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
