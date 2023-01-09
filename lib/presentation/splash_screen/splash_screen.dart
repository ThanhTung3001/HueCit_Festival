import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.red900,
            body: GestureDetector(
                onTap: () {
                  onTapSplash();
                },
                child: Container(
                    width: size.width,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgLogo11,
                              height: getSize(84.00),
                              width: getSize(84.00),
                              radius: BorderRadius.circular(
                                  getHorizontalSize(42.00))),
                          Container(
                              width: getHorizontalSize(233.00),
                              margin: getMargin(top: 4, bottom: 5),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_c_s_d_li_u_l2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(20),
                                            fontFamily: 'Be Vietnam Pro',
                                            fontWeight: FontWeight.w900,
                                            letterSpacing: 0.30,
                                            height: 1.40)),
                                    TextSpan(
                                        text: "msg_t_nh_th_a_thi_n".tr,
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(16),
                                            fontFamily: 'Be Vietnam Pro',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.32,
                                            height: 1.50))
                                  ]),
                                  textAlign: TextAlign.center))
                        ])))));
  }

  onTapSplash() {
    Get.toNamed(AppRoutes.homeContainerScreen);
  }
}
