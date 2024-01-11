import 'package:flutter/material.dart';

class CounterCard extends StatelessWidget {
  const CounterCard(
      {super.key,
      required this.borderColor,
      required this.backgroundColor,
      required this.counterColor,
      required this.titleCard,
      required this.counter});

  final Color borderColor;
  final Color backgroundColor;
  final Color counterColor;
  final String titleCard;
  final int counter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: backgroundColor,
          border: Border.all(
              width: 2,
              color: borderColor,
              strokeAlign: 1,
              style: BorderStyle.solid)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              titleCard,
              style: TextStyle(
                  color: counterColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  width: 1,
                ),
                Text(
                  counter.toString(),
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      color: counterColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 32),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
