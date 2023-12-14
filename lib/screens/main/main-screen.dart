import 'package:employee_system_prototype/screens/main/account/account-screen.dart';
import 'package:employee_system_prototype/screens/main/approval/approval-screen.dart';
import 'package:employee_system_prototype/screens/main/home/home-screen.dart';
import 'package:employee_system_prototype/screens/main/presence/presence-screen.dart';
import 'package:employee_system_prototype/widget/bottom-navigation/bottom-navigation.dart';
import 'package:employee_system_prototype/widget/bottom-navigation/navigation-menu-item.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageNavigation = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(
        currentPage: currentPageNavigation,
        onDestinationChange: (value) {
          setState(() {
            currentPageNavigation = value;
          });
        },
      ),
      body: navigationMenuListItem
          .map((screen) => getScreen(screen))
          .toList()[currentPageNavigation],
    );
  }

  getScreen(NavigationMenuItem screen) {
    Widget? screenDestination;

    switch (screen.id) {
      case 'home':
        screenDestination = const HomeScreen();
        break;
      case 'presence':
        screenDestination = const PresenceScreen();
        break;
      case 'approval':
        screenDestination = const ApprovalScreen();
        break;
      case 'me':
        screenDestination = const AccountScreen();
        break;
    }

    return screenDestination;
  }
}
