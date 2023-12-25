import 'package:employee_system_prototype/utils/colors.dart';
import 'package:flutter/material.dart';

class BaseErrorScreen extends StatelessWidget {
  const BaseErrorScreen(
      {super.key,
      required this.title,
      required this.description,
      required this.onRetry,
      required this.onDismiss,
      required this.retryTitle,
      required this.dismissTitle,
      required this.icon});

  final String title;
  final String description;
  final String retryTitle;
  final String dismissTitle;
  final IconData icon;
  final VoidCallback onRetry;
  final VoidCallback onDismiss;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Icon(
            icon,
            size: 72,
            color: redChest,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w600, color: redChest),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 13, fontWeight: FontWeight.normal, color: davyGrey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 60, right: 60),
            child: ElevatedButton(
                onPressed: onRetry,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: blueberry,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                child: Text(
                  retryTitle,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: GestureDetector(
              onTap:onDismiss,
              child: Text(
                dismissTitle,
                style: const TextStyle(
                    fontSize: 15, fontWeight: FontWeight.w600, color: davyGrey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
