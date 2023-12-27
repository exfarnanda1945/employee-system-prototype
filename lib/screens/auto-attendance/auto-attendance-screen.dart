import 'package:employee_system_prototype/screens/errors/location-disabled-error.dart';
import 'package:employee_system_prototype/screens/errors/permission-location-error.dart';
import 'package:employee_system_prototype/utils/colors.dart';
import 'package:employee_system_prototype/utils/network-device.dart';
import 'package:employee_system_prototype/widget/clip/auto-attendance-clip.dart';
import 'package:employee_system_prototype/widget/forms/auto-attendance-form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
    isMapLoading
        ? EasyLoading.show(status: 'Loading...')
        : EasyLoading.dismiss();

    return Scaffold(body: renderBody());
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
            height: MediaQuery.of(context).size.height * (5/7),
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: const CameraPosition(
                  target: LatLng(-6.267309535408621, 106.82552887691514), zoom: 17),
              onMapCreated: (GoogleMapController controller) {},
              myLocationButtonEnabled: true,
              myLocationEnabled: true,
              zoomGesturesEnabled: false,
              scrollGesturesEnabled: false,
            )
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ClipPath(
            clipper: AutoAttendanceClip(),
            child: Container(
              height: MediaQuery.of(context).size.height * (2/7),
              width: double.infinity,
              color: hanBlue,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * (3/7),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  )),
              child: const Padding(
                padding: EdgeInsets.only(left: 30,right: 30,top: 15),
                child: AutoAttendanceForm(),
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
