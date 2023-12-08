import 'package:employee_system_prototype/utils/clip/login-clip.dart';
import 'package:employee_system_prototype/utils/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: blueberry,
      body: Column(
        children: [
          ClipPath(
            clipper: LoginClip(),
            child: Container(
              color: Colors.black,
              height: 350.0,
              width: double.infinity,
            ),
          )
        ],
      ),
    );
  }
}
