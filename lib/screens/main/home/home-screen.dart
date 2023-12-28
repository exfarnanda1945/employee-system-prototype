import 'package:employee_system_prototype/utils/colors.dart';
import 'package:employee_system_prototype/widget/clip/home-middle-clip.dart';
import 'package:employee_system_prototype/widget/clip/home-top-clip.dart';
import 'package:flutter/material.dart';

import 'home-presence-info.dart';

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
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 140, left: 20, right: 20),
              child: Container(
                width: double.infinity,
                // height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: const HomePresenceInfo(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: SizedBox(
              height: 65,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("images/people.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Jacob Jones',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        Text(
                          '12345678 - Mobile Developer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.login,
                    size: 35,
                    color: Colors.white,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
