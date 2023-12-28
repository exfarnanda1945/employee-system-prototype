import 'package:flutter/material.dart';

import 'base-error-screen.dart';

class LocationDisabledError extends StatelessWidget {
  const LocationDisabledError(
      {super.key, required this.onRetry, required this.onDismiss});

  final VoidCallback onRetry;
  final VoidCallback onDismiss;

  @override
  Widget build(BuildContext context) {
    return BaseErrorScreen(
        icon: Icons.location_off,
        title: "Please Enable Your Location",
        description: "You need to enable location to take presence",
        onRetry: onRetry,
        onDismiss: onDismiss,
        retryTitle: "Retry",
        dismissTitle: "Remind me later");
  }
}
