import 'package:employee_system_prototype/utils/colors.dart';
import 'package:employee_system_prototype/widget/clip/home-middle-clip.dart';
import 'package:employee_system_prototype/widget/clip/home-top-clip.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: HomeMiddleClip(),
            child: Container(
              color: blueberry,
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
            ),
          ),
          ClipPath(
            clipper: HomeTopClip(),
            child: Container(
              color: hanBlue,
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
            ),
          ),
        ],
      ),
    );
  }
}
