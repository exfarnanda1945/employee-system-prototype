import 'package:employee_system_prototype/model/presence.dart';
import 'package:employee_system_prototype/utils/colors.dart';
import 'package:employee_system_prototype/widget/cards/presence-card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PresenceScreen extends StatelessWidget {
  const PresenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pushNamed("manual-presence");
          },
          backgroundColor: blueberry,
          foregroundColor: Colors.white,
          child: const Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          child: ListView.builder(
            itemCount: presenceThisWeeks.length,
            itemBuilder: (context, index) {
              return PresenceCard(presence: presenceThisWeeks[index]);
            },
          ),
        ));
  }
}
