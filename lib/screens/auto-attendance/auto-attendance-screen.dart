import 'package:employee_system_prototype/screens/errors/location-disabled-error.dart';
import 'package:employee_system_prototype/screens/errors/permission-location-error.dart';
import 'package:employee_system_prototype/utils/network-device.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

class AutoAttendanceScreen extends StatefulWidget {
  const AutoAttendanceScreen({super.key});

  @override
  State<AutoAttendanceScreen> createState() => _AutoAttendanceScreenState();
}

class _AutoAttendanceScreenState extends State<AutoAttendanceScreen> {
  bool isMapLoading = true;
  bool isLocPermissionDenied = false;
  bool isLocationDisable = false;
  Position? currentPosition;
  NetworkInfo? networkInfo;

  @override
  void initState() {
    super.initState();
    requestNetworkAndLocation(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: renderBody());
  }

  renderBody() {
    if (isMapLoading) {
      return const Center(
        child: Text("Loading..."),
      );
    }

    if (isLocPermissionDenied) {
      return PermissionLocationError(
        onRetry: () async {
          await requestNetworkAndLocation(false);
        },
        onDismiss: () {},
      );
    }

    if (isLocationDisable) {
      return LocationDisabledError(
        onDismiss: () {},
        onRetry: () async {
          await getCurrentLocation(false);
        },
      );
    }

    return const Center(
      child: Text("Center"),
    );
  }

  Future requestNetworkAndLocation(bool isFirstTake) async {
    if (!isFirstTake) {
      setState(() {
        isMapLoading = true;
      });
    }

    await Permission.location.request().then((value) async {
      if (!value.isGranted) {
        setState(() {
          isMapLoading = false;
          isLocPermissionDenied = true;
        });
        return;
      }

      if (value.isGranted) {
        setState(() {
          isLocPermissionDenied = false;
        });
        await getCurrentLocation(isFirstTake);
      }
    }).whenComplete(() => getNetworkStatus());
  }

  Future getCurrentLocation(bool isFirstTake) async {
    if (!isFirstTake) {
      setState(() {
        isMapLoading = true;
      });
    }

    try {
      final location = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);

      setState(() {
        currentPosition = location;
        isMapLoading = false;
        isLocationDisable = false;
      });
    } catch (e) {
      setState(() {
        isMapLoading = false;
        isLocationDisable = true;
      });
    }
  }

  getNetworkStatus() {
    setState(() {
      networkInfo = NetworkDevice.get();
      setState(() {
        isMapLoading = false;
      });
    });
  }
}
