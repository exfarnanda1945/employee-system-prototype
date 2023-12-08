import 'package:employee_system_prototype/utils/clip/login-clip.dart';
import 'package:employee_system_prototype/utils/colors.dart';
import 'package:employee_system_prototype/widget/signup-form.dart';
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
            clipper: LoginClip(),
            child: Container(
              color: hanBlue,
              height: 300.0,
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Hello',
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
                      'Sign Up to create your account',
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
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                width: double.infinity,
                height: (5/7) * MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20) )
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20,right: 20,top:50),
                  child: SignUpForm(),
                )
                ,
              ),
            ),
          )
        ],
      ),
    );
  }
}
