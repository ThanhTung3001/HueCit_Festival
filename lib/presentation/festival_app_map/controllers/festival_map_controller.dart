import 'dart:async';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/core/utils/permisstion_app.dart';
import 'package:hue_festival/data/apiClient/festival_location_client.dart';

import '../../../data/models/festival/festiva_location_model.dart';

class FestivalMapController extends GetxController {
  Rx<Completer<GoogleMapController>> googleMapController =
      Completer<GoogleMapController>().obs;
  Rx<CameraPosition> kGooglePlex = CameraPosition(
    target: LatLng(16.99, 15.88),
    zoom: 14.4746,
  ).obs;
  RxList<FestivalLocationModel> festivalLocations =
      RxList<FestivalLocationModel>();
  Rx<bool> isLoaded = false.obs;
  RxSet<Marker> makers = RxSet<Marker>();
  Rx<int> selectIndex = 0.obs;
  Rx<CarouselController> carouselController = CarouselController().obs;
  _initLocationCurrent() async {
    // determinePosition();

    Position? position = await determinePosition();
    kGooglePlex(
      CameraPosition(
          target: LatLng(position!.latitude, position.longitude),
          zoom: 14.4746),
    );
    var response = await FestivalLocatonClient().getFestivalLocation();
    festivalLocations(response);

    response.forEach((e) async {
      makers.add(
        Marker(
          onTap: () {
            carouselController.value.animateToPage(response.indexOf(e));
          },
          markerId: MarkerId(e.iD.toString()),
          position: LatLng(e.x!, e.y!),
          icon: await BitmapDescriptor.fromAssetImage(
              ImageConfiguration(size: Size(48, 48)),
              ImageConstant.locationImg),
          infoWindow:
              InfoWindow(title: e.diaDiem, snippet: e.diaChi, onTap: () {}),
        ),
      );
    });
    isLoaded(true);
  }

  changePage(page, reason) {
    var festivalLocal = festivalLocations.value[page];
    googleMapController.value.future.then((controller) {
      controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(festivalLocal.x!, festivalLocal.y!),
          zoom: 18,
        ),
      ));
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _initLocationCurrent();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    googleMapController.close();
  }
}
