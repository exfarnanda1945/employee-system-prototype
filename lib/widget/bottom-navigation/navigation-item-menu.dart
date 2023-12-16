import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigationBarMenu {
  final String id;
  final String title;
  final IconData icon;
  final IconData iconWhenSelected;

  NavigationBarMenu(this.title, this.icon, this.iconWhenSelected, this.id);
}

List<NavigationBarMenu> listNavigationBarMenu = [
  NavigationBarMenu(
      'Attendance', Icons.task_outlined, Icons.task, 'attendance'),
  NavigationBarMenu(
      'Approval', Icons.approval_outlined, Icons.approval, 'approval'),
  NavigationBarMenu(
      'Account', Icons.account_circle_outlined, Icons.account_circle, 'account')
];
