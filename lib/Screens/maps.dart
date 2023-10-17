import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/el.dart';

class NutribuddyMap extends StatefulWidget {
  const NutribuddyMap({Key? key}) : super(key: key);

  @override
  State<NutribuddyMap> createState() => _NutribuddyMapState();
}

class _NutribuddyMapState extends State<NutribuddyMap> {
  Completer<GoogleMapController>? mapController;
  static LatLng initialPosition = const LatLng(-6.972435, 107.624756);
  final Set<Marker> markers = {};
  static LatLng lastMapPosition = initialPosition;

  @override
  void initState() {
    super.initState();
    onAddMarkerButtonPressed();
    getUserLocation();
  }

  void getUserLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.bestForNavigation);
    setState(() {
      initialPosition = LatLng(position.latitude, position.longitude);
    });
  }

  void onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController?.complete(controller);
    });
  }

  void onCameraMove(CameraPosition position) {
    lastMapPosition = position.target;
  }

  void onAddMarkerButtonPressed() {
    setState(() {
      markers.add(Marker(
          markerId: MarkerId(lastMapPosition.toString()),
          position: lastMapPosition,
          onTap: () {},
          icon: BitmapDescriptor.defaultMarker));
    });
  }

  // Widget mapButton(Function function, Icon icon, Color color) {
  //   return RawMaterialButton(
  //     onPressed: function,
  //     child: icon,
  //     shape: new CircleBorder(),
  //     elevation: 2.0,
  //     fillColor: color,
  //     padding: const EdgeInsets.all(7.0),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initialPosition == null
          ? const Center(child: CircularProgressIndicator())
          : GoogleMap(
              onMapCreated: onMapCreated,
              markers: markers,
              initialCameraPosition:
                  CameraPosition(target: initialPosition, zoom: 14),
              zoomGesturesEnabled: true,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              compassEnabled: true,
              onCameraMove: onCameraMove,
              onTap: (position) {
                setState(() {
                  markers.add(Marker(
                      markerId: MarkerId(
                          "${position.latitude}, ${position.longitude}"),
                      icon: BitmapDescriptor.defaultMarker,
                      position: position));
                });
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: getUserLocation,
        child: const Iconify(
          El.map_marker,
          color: Colors.white,
        ),
      ),
    );
  }
}
