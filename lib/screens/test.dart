import 'package:dotted_border/dotted_border.dart';
import 'package:employee_system_prototype/utils/colors.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Add Attachments",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: double.infinity,
                  child: GestureDetector(
                    onTap: () {},
                    child: DottedBorder(
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(10),
                        dashPattern: const [5, 5],
                        color: lightGray,
                        strokeWidth: 2,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: davyGrey,
                                  ),
                                  Text(
                                    "Choose File",
                                    style: TextStyle(color: davyGrey),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Column(
                                    children: [
                                      Image(
                                        image: AssetImage('images/example.jpg'),
                                        height: 120,
                                        width: 120,
                                      ),
                                      Text("Example.jpg")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image(
                                        image: AssetImage('images/example.jpg'),
                                        height: 120,
                                        width: 120,
                                      ),
                                      Text("Example.jpg")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image(
                                        image: AssetImage('images/example.jpg'),
                                        height: 120,
                                        width: 120,
                                      ),
                                      Text("Example.jpg")
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
