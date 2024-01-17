import 'package:dotted_border/dotted_border.dart';
import 'package:employee_system_prototype/utils/colors.dart';
import 'package:flutter/material.dart';

class FilePicker extends StatelessWidget {
  const FilePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
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
                                // Column(
                                //   children: [
                                //     Image(
                                //       image: AssetImage('images/example.jpg'),
                                //       height: 120,
                                //       width: 120,
                                //     ),
                                //     Text("Example.jpg")
                                //   ],
                                // ),
                                // Column(
                                //   children: [
                                //     Image(
                                //       image: AssetImage('images/example.jpg'),
                                //       height: 120,
                                //       width: 120,
                                //     ),
                                //     Text("Example.jpg")
                                //   ],
                                // ),
                                // Column(
                                //   children: [
                                //     Image(
                                //       image: AssetImage('images/example.jpg'),
                                //       height: 120,
                                //       width: 120,
                                //     ),
                                //     Text("Example.jpg")
                                //   ],
                                // ),
                              ],
                            )
                          ],
                        ),
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
