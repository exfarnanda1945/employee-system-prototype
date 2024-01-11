import 'package:employee_system_prototype/model/approval-menu.dart';
import 'package:employee_system_prototype/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ApprovalScreen extends StatelessWidget {
  const ApprovalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.count(
        crossAxisCount: 3,
        children: approvalMenuList
            .map((menu) => GestureDetector(
                  onTap: () {
                    context.pushNamed(menu.navigateTo);
                  },
                  child: Column(
                    children: [
                      Icon(
                        menu.icon,
                        size: 54,
                        color: menu.color,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        menu.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: davyGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                ))
            .toList(),
      ),
    ));
  }
}
