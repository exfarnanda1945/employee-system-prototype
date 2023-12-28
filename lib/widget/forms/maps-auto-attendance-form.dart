import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsAutoAttendanceForm extends StatelessWidget {
  MapsAutoAttendanceForm({super.key, required this.position});

  Position position;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: CameraPosition(
          target: LatLng(position.latitude, position.longitude), zoom: 17),
      onMapCreated: (GoogleMapController controller) {},
      myLocationButtonEnabled: false,
      myLocationEnabled: true,
      zoomGesturesEnabled: false,
      scrollGesturesEnabled: false,
      zoomControlsEnabled: false,
    );
  }
}
