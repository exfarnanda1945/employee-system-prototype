import 'package:employee_system_prototype/screens/errors/base-error-screen.dart';
import 'package:flutter/material.dart';

class PermissionLocationError extends StatelessWidget {
  const PermissionLocationError(
      {super.key, required this.onRetry, required this.onDismiss});

  final VoidCallback onRetry;
  final VoidCallback onDismiss;

  @override
  Widget build(BuildContext context) {
    return BaseErrorScreen(
        icon: Icons.location_off,
        title: "Please Enable Location Permission",
        description:
            "You need to enable location permission to take Presence",
        onRetry: onRetry,
        onDismiss: onDismiss,
        retryTitle: "Retry",
        dismissTitle: "Remind me later");
  }
}
