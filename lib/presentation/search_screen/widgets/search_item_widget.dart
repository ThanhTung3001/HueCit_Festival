import '../controller/search_controller.dart';
import '../models/search_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  SearchItemWidget(this.searchItemModelObj);

  SearchItemModel searchItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
       bottom: 12
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgClock,
            height: getSize(
              24.00,
            ),
            width: getSize(
              24.00,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 8,
              top: 2,
              bottom: 1,
            ),
            child: Text(
              "lbl_ua_thuy_n".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtSFProRegular16.copyWith(
                height: 1.25,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgClose,
            height: getSize(
              24.00,
            ),
            width: getSize(
              24.00,
            ),
          ),
        ],
      ),
    );
  }
}
