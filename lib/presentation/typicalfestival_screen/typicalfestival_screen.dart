import 'package:hue_festival/data/models/festival/festival_model.dart';

import 'controller/typicalfestival_controller.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/widgets/app_bar/appbar_image.dart';
import 'package:hue_festival/widgets/app_bar/appbar_subtitle.dart';
import 'package:hue_festival/widgets/app_bar/custom_app_bar.dart';

class TypicalfestivalScreen extends GetWidget<TypicalfestivalController> {
  TypicalfestivalScreen({required this.data});
  List<FestivalModel> data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      appBar: CustomAppBar(
          height: getVerticalSize(56.00),
          leadingWidth: 40,
          leading: AppbarImage(
              height: getSize(24.00),
              width: getSize(24.00),
              svgPath: ImageConstant.imgArrowleft,
              margin: getMargin(left: 16, top: 12, bottom: 12),
              onTap: onTapArrowleft),
          centerTitle: true,
          title: AppbarSubtitle(text: "msg_l_h_i_ti_u_bi_u".tr),
          styleType: Style.bgOutlineGray200),
      body: Padding(
          padding: EdgeInsets.only(top: 20),
          //width: size.width,
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              ...data
                  .map((e) => Container(
                        child: Column(
                          children: [
                            CustomImageView(
                                fit: BoxFit.cover,
                                url: AppConstances.ENTRY_POINT +
                                    e.hinhAnh!.split(",")[0],
                                height: getVerticalSize(100.00),
                                width: getHorizontalSize(163.00),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(8.00))),
                            Padding(
                              padding: getPadding(top: 8),
                              child: Text(
                                e.tenLeHoi ?? "",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtSFProMedium16
                                    .copyWith(height: 1.25),
                              ),
                            ),
                          ],
                        ),
                      ))
                  .toList()
            ],
          )),
    );
  }

  onTapArrowleft() {
    Get.back();
  }
}
