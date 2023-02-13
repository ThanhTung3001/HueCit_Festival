import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/presentation/festival_app_map/controllers/festival_map_controller.dart';

class FestivalMapScreen extends GetView<FestivalMapController> {
  FestivalMapScreen({Key? key}) : super(key: key);
  //File fileImg = File("/" + ImageConstant.imgLocation24x24);

  @override
  Widget build(BuildContext context) {
    // Uint8List file = fileImg.readAsBytesSync();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //backgroundColor: ColorConstant.black900,
      body: Stack(
        children: [
          Positioned.fill(
            child: Obx(() => controller.isLoaded.value == true
                ? GoogleMap(
                    myLocationEnabled: false,
                    myLocationButtonEnabled: false,
                    mapType: MapType.normal,
                    initialCameraPosition: controller.kGooglePlex.value,
                    onMapCreated: (GoogleMapController googleMap) {
                      controller.googleMapController.value.complete(googleMap);
                    },
                    markers: controller.makers,
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  )),
          ),
          Positioned(
              bottom: 35,
              left: 0,
              right: 0,
              child: Obx(
                (() => Container(
                      height: 100,
                      child: CarouselSlider(
                        carouselController: controller.carouselController.value,
                        // ignore: invalid_use_of_protected_member
                        items: controller.festivalLocations.value.map(
                          (e) {
                            var timeStr = DateTime.parse(e.batDau!);
                            var timeSet = timeStr.format("dd/MM/yyyy");
                            return ItemPositionBottom(
                              name: e.tenLeHoi!,
                              location: e.diaDiem!,
                              time: "Từ $timeSet",
                              img: e.hinhAnh!.split(",")[0],
                            );
                          },
                        ).toList(),
                        options: CarouselOptions(
                          onPageChanged: (controller.changePage),
                          enableInfiniteScroll: false,
                          viewportFraction: 0.95,
                          initialPage: controller.selectIndex.value,
                        ),
                      ),
                    )),
              )),
          Positioned(
            top: 56,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              width: Get.width,
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff161616).withOpacity(0.16),
                            blurRadius: 16,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    height: 40,
                    width: Get.width - 90,
                    child: TextField(
                      obscureText: true,
                      autofocus: false,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          // width: 0.0 produces a thin "hairline" border
                          borderSide: const BorderSide(
                              color: Color(0xffE8EBED), width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffE8EBED), width: 1.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusColor: Colors.white,
                        contentPadding: EdgeInsets.all(6.0),
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 18,
                            color: Color(0xff40090C),
                          ),
                        ),
                        hintText: "Nhập tên sự kiện, địa điểm...",
                        hintStyle: TextStyle(
                            color: Color(0xff240507).withOpacity(0.3),
                            fontSize: 16,
                            fontFamily: "SF Pro",
                            fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff161616).withOpacity(0.16),
                            blurRadius: 16,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    //  padding: EdgeInsets.all(16),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.my_location_sharp,
                        color: Color(0xff40090C),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container ItemPositionBottom(
      {required String name, String? time, String? location, String? img}) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: CustomImageView(
              height: Get.height,
              width: Get.width,
              radius: BorderRadius.circular(getHorizontalSize(8.00)),
              fit: BoxFit.cover,
              url: AppConstances.ENTRY_POINT + img!,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            flex: 6,
            child: Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgLocation,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          location!,
                          style: TextStyle(
                            fontFamily: "SP Pro",
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 4),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff40090C),
                        fontFamily: "SP Pro",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      time!,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff007543),
                        fontFamily: "SP Pro",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
