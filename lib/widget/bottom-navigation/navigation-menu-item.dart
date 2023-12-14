import 'package:flutter/material.dart';

class NavigationMenuItem {
  const NavigationMenuItem(
      {required this.id,
      required this.icon,
      required this.name,
      required this.iconSelected});

  final String id;
  final String name;
  final IconData icon;
  final IconData iconSelected;
}

List<NavigationMenuItem> navigationMenuListItem = [
  const NavigationMenuItem(
      id: 'home',
      icon: Icons.home_outlined,
      name: "Home",
      iconSelected: Icons.home),
  const NavigationMenuItem(
      id: 'presence',
      icon: Icons.task_outlined,
      name: "Presence",
      iconSelected: Icons.task),
  const NavigationMenuItem(
      id: 'approval',
      icon: Icons.approval_outlined,
      name: "Approval",
      iconSelected: Icons.approval),
  const NavigationMenuItem(
      id: 'me',
      icon: Icons.account_circle_outlined,
      name: "Me",
      iconSelected: Icons.account_circle),
];
