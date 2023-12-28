import 'package:employee_system_prototype/screens/errors/location-disabled-error.dart';
import 'package:employee_system_prototype/screens/errors/permission-location-error.dart';
import 'package:employee_system_prototype/utils/colors.dart';
import 'package:employee_system_prototype/utils/network-device.dart';
import 'package:employee_system_prototype/widget/forms/auto-presence-form.dart';
import 'package:employee_system_prototype/widget/forms/maps-auto-presence-form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:geolocator/geolocator.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

class AutoPresenceScreen extends StatefulWidget {
  const AutoPresenceScreen({super.key});

  @override
  State<AutoPresenceScreen> createState() => _AutoPresenceScreenState();
}

class _AutoPresenceScreenState extends State<AutoPresenceScreen> {
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
    if (isMapLoading || currentPosition == null) {
      EasyLoading.show(status: 'Loading...');
    } else {
      EasyLoading.dismiss();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueberry,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'Clock In',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
      ),
        body: renderBody());
  }

  renderBody() {
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

    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * (5 / 7),
              child: currentPosition != null
                  ? MapsAutoPresenceForm(position: currentPosition!)
                  : null),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * (2 / 7),
            width: double.infinity,
            decoration: const BoxDecoration(
                color: blueberry,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                )),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * (3 / 7),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  )),
              child: const Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 15),
                child: AutoPresenceForm(),
              ),
            ),
          ),
        ),
      ],
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

  @override
  void dispose() {
    super.dispose();
    EasyLoading.dismiss();
  }
}
