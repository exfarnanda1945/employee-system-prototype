import 'package:employee_system_prototype/utils/colors.dart';
import 'package:employee_system_prototype/widget/forms/manual-presence-form.dart';
import 'package:flutter/material.dart';

class ManualPresence extends StatelessWidget {
  const ManualPresence({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: blueberry,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          title: const Text(
            'Manual Presence',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
        body: const ManualPresenceForm());
  }
}
