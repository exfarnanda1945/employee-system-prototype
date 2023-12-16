import 'package:employee_system_prototype/utils/clip/login-clip.dart';
import 'package:employee_system_prototype/utils/colors.dart';
import 'package:employee_system_prototype/widget/form/login-form.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: blueberry,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipPath(
            clipper: LoginClip(),
            child: Container(
              color: hanBlue,
              height: 300.0,
              width: double.infinity,
            ),
          ),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Text(
                'Login to your account',
                style: TextStyle(
                  color: lightGray,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              width: double.infinity,
              height: 450,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: const Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 50),
                child: LoginForm(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
