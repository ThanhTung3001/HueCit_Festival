import '../comingfestival_screen/widgets/comingfestival_item_widget.dart';
import 'controller/comingfestival_controller.dart';
import 'models/comingfestival_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/widgets/app_bar/appbar_image.dart';
import 'package:hue_festival/widgets/app_bar/appbar_subtitle.dart';
import 'package:hue_festival/widgets/app_bar/custom_app_bar.dart';
import 'package:hue_festival/widgets/custom_button.dart';

class ComingfestivalScreen extends GetWidget<ComingfestivalController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 12),
                    onTap: onTapArrowleft1),
                centerTitle: true,
                title: AppbarSubtitle(text: "msg_l_h_i_s_ki_n".tr),
                styleType: Style.bgOutlineGray200),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: size.width,
                                  decoration: AppDecoration.outlineGray2002,
                                  child: Row(children: [
                                    CustomButton(
                                        height: 48,
                                        width: 125,
                                        text: "lbl_s_p_di_n_ra".tr,
                                        variant: ButtonVariant.OutlineRed900,
                                        shape: ButtonShape.Square,
                                        padding: ButtonPadding.PaddingAll14,
                                        fontStyle:
                                            ButtonFontStyle.SFProMedium16),
                                    Padding(
                                        padding: getPadding(
                                            left: 13, top: 14, bottom: 13),
                                        child: Text("lbl_ang_di_n_ra".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSFProMedium16Black90066
                                                .copyWith(height: 1.25))),
                                    Padding(
                                        padding: getPadding(
                                            left: 36,
                                            top: 12,
                                            right: 23,
                                            bottom: 15),
                                        child: Text("lbl_di_n_ra".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSFProMedium16Black90066
                                                .copyWith(height: 1.25)))
                                  ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 20, right: 16),
                                  child: Obx(() => ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller
                                          .comingfestivalModelObj
                                          .value
                                          .comingfestivalItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ComingfestivalItemModel model =
                                            controller
                                                .comingfestivalModelObj
                                                .value
                                                .comingfestivalItemList[index];
                                        return ComingfestivalItemWidget(model,
                                            onTapCard: onTapCard);
                                      })))
                            ]))))));
  }

  onTapCard() {
    Get.toNamed(AppRoutes.huenewsDetailsScreen);
  }

  onTapArrowleft1() {
    Get.back();
  }
}
