import 'package:employee_system_prototype/utils/colors.dart';
import 'package:flutter/material.dart';

class PresenceScreen extends StatelessWidget {
  const PresenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: blueberry,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
      body: const Center(
        child: Text("Presence"),
      ),
    );
  }
}
