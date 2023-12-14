import 'package:employee_system_prototype/utils/colors.dart';
import 'package:employee_system_prototype/widget/clip/login-clip.dart';
import 'package:employee_system_prototype/widget/clip/signup-clip.dart';
import 'package:employee_system_prototype/widget/forms/signup-form.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: blueberry,
      body: Stack(
        children: [
          ClipPath(
            clipper: SignUpClip(),
            child: Container(
              height: 300.0,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/work.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                width: double.infinity,
                height: (5 / 7) * MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: SignUpForm(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
