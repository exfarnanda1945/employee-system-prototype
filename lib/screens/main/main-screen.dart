import 'package:employee_system_prototype/utils/clip/login-clip.dart';
import 'package:employee_system_prototype/utils/colors.dart';
import 'package:employee_system_prototype/widget/bottom-navigation/bottom-navigation.dart';
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
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigation(
          currentPage: currentPageNavigation,
          onDestinationChange: (value) {
            setState(() {
              currentPageNavigation = value;
            });
          }),
      body: Stack(
        children: [
          ClipPath(
            clipper: LoginClip(),
            child: Container(
              color: hanBlue,
              height: 300.0,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
