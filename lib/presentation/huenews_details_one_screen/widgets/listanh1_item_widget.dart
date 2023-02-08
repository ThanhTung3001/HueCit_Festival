import 'package:hue_festival/data/models/new/new_model.dart';

import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

// ignore: must_be_immutable
class Listanh1ItemWidget extends StatelessWidget {
  Listanh1ItemWidget(this.model);

  NewsList model;

  //var controller = Get.find<HuenewsDetailsOneController>();

  @override
  Widget build(BuildContext context) {
    print(model.imgNews!.url ?? "");
    return Padding(
      padding: getPadding(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            fit: BoxFit.cover,
            url: model.imgNews!.url!,
            height: getVerticalSize(
              80.00,
            ),
            width: getHorizontalSize(
              120.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                8.00,
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Padding(
            padding: getPadding(
              bottom: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    202.00,
                  ),
                  child: Text(
                    model.title ?? "",
                    maxLines: 2,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProMedium16.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgCalendar,
                        height: getSize(
                          16.00,
                        ),
                        width: getSize(
                          16.00,
                        ),
                        // margin: getMargin(
                        //   bottom: 1,
                        // ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 4,
                        ),
                        child: Text(
                          model.publishTime!.replaceAll("-", "/"),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFProRegular14Gray900.copyWith(
                            height: 1.21,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
