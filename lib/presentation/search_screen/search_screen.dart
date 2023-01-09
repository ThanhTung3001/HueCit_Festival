import '../search_screen/widgets/search_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/search_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/widgets/app_bar/custom_app_bar.dart';
import 'package:hue_festival/widgets/custom_search_view.dart';

class SearchScreen extends GetWidget<SearchController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            64.00,
          ),
          title: CustomSearchView(
            width: 296,
            focusNode: FocusNode(),
            controller: controller.searchbarController,
            hintText: "msg_nh_p_t_kh_a_t_m".tr,
            margin: getMargin(
              left: 16,
            ),
            prefix: Container(
              margin: getMargin(
                all: 8,
              ),
              child: CustomImageView(
                svgPath: ImageConstant.imgSearch,
              ),
            ),
            prefixConstraints: BoxConstraints(
              minWidth: getSize(
                24.00,
              ),
              minHeight: getSize(
                24.00,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: getPadding(
                left: 16,
                top: 23,
                right: 16,
                bottom: 20,
              ),
              child: Text(
                "lbl_h_y".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtSFProMedium16Red900.copyWith(
                  height: 1.25,
                ),
              ),
            ),
          ],
          styleType: Style.bgOutlineGray200,
        ),
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 16,
            top: 22,
            right: 16,
            bottom: 22,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  right: 1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "msg_t_m_ki_m_g_n_y".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProBold16.copyWith(
                        height: 1.25,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        bottom: 4,
                      ),
                      child: Text(
                        "lbl_x_a_t_t_c".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSFProMedium12Black90066.copyWith(
                          height: 1.25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 17,
                ),
                child: Obx(
                  () => ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount:
                        controller.searchModelObj.value.searchItemList.length,
                    itemBuilder: (context, index) {
                      SearchItemModel model =
                          controller.searchModelObj.value.searchItemList[index];
                      return SearchItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
