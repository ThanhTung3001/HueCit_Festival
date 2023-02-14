import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreeen extends StatefulWidget {
  const OnBoardingScreeen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreeen> createState() => _OnBoardingScreeenState();
}

class _OnBoardingScreeenState extends State<OnBoardingScreeen> {
  int _current = 0;
  PageController controller = PageController(initialPage: 0, keepPage: true);

  @override
  Widget build(BuildContext context) {
    var firstPage = Container(
      child: Stack(
        children: [
          Positioned.fill(
              bottom: 250,
              child: CustomImageView(
                imagePath: ImageConstant.onBoaring,
                fit: BoxFit.cover,
              ),),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(48),
                      topRight: Radius.circular(48))),
              height: 300,
              child: Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 40, bottom: 16),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Khám phá những ",
                              style: TextStyle(
                                  fontFamily: "Sf pro",
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 20)),
                          TextSpan(
                            text: "lễ hội\n sự kiện sắp diễn ra",
                            style: TextStyle(
                                fontFamily: "Sf pro",
                                fontWeight: FontWeight.w700,
                                color: ColorConstant.red900,
                                fontSize: 20),
                          )
                        ], style: TextStyle(height: 1.5)),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Sf pro",
                            fontWeight: FontWeight.w400,
                            color: Color(0xff240507),
                            fontSize: 16,
                            height: 1.25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 48),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Bỏ qua",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConstant.red900),
                            ),
                          ),
                          Container(
                              height: getVerticalSize(6.00),
                              child: SmoothIndicator(
                                  offset: _current.toDouble(),
                                  count: 4,
                                  axisDirection: Axis.horizontal,
                                  effect: ScrollingDotsEffect(
                                      spacing: 4,
                                      activeDotColor: ColorConstant.amber400,
                                      dotColor: Colors.black.withOpacity(0.2),
                                      dotHeight: getVerticalSize(6.00),
                                      dotWidth: getHorizontalSize(6.00)))),
                          InkWell(
                            onTap: () {
                              controller.animateToPage(_current + 1,
                                  duration: Duration(milliseconds: 400),
                                  curve: Curves.easeIn);
                              setState(() {
                                _current = _current + 1;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 84,
                              height: 40,
                              padding: EdgeInsets.only(
                                  top: 8, bottom: 8, left: 16, right: 16),
                              //  onPressed: () {},
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(48),
                                color: ColorConstant.red900,
                              ),
                              child: Text(
                                "Tiếp",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            bottom: 0,
            left: 0,
            right: 0,
          ),
          Positioned(
            child: SizedBox(
              height: 150,
              child: Container(
                //height: 100,
                decoration: BoxDecoration(
                    //color: Colors.red,
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.white.withOpacity(0.8),
                        Colors.white.withOpacity(0)
                      ],
                    )),
              ),
            ),
            bottom: 258,
            left: 0,
            right: 0,
          )
        ],
      ),
    );
    var secondPage = Container(
      child: Stack(
        children: [
          Positioned.fill(
              bottom: 250,
              child: CustomImageView(
                imagePath: ImageConstant.onBoaring2,
                fit: BoxFit.cover,
              )),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(48),
                      topRight: Radius.circular(48))),
              height: 300,
              child: Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 40, bottom: 16),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Khám phá ",
                              style: TextStyle(
                                  fontFamily: "Sf pro",
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 20)),
                          TextSpan(
                              text: "thông tin về lễ hội\n",
                              style: TextStyle(
                                  fontFamily: "Sf pro",
                                  fontWeight: FontWeight.w700,
                                  color: ColorConstant.red900,
                                  fontSize: 20)),
                          TextSpan(
                              text: "Thuộc tỉnh Thừa Thiên Huế ",
                              style: TextStyle(
                                  fontFamily: "Sf pro",
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 20)),
                        ], style: TextStyle(height: 1.5)),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Sf pro",
                          fontWeight: FontWeight.w400,
                          color: Color(0xff240507),
                          fontSize: 16,
                            height: 1.25
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 48),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Bỏ qua",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConstant.red900),
                            ),
                          ),
                          Container(
                              height: getVerticalSize(6.00),
                              child: SmoothIndicator(
                                  offset: _current.toDouble(),
                                  count: 4,
                                  axisDirection: Axis.horizontal,
                                  effect: ScrollingDotsEffect(
                                      spacing: 4,
                                      activeDotColor: ColorConstant.amber400,
                                      dotColor: Colors.black.withOpacity(0.2),
                                      dotHeight: getVerticalSize(6.00),
                                      dotWidth: getHorizontalSize(6.00)))),
                          InkWell(
                            onTap: () {
                              controller.animateToPage(_current + 1,
                                  duration: Duration(milliseconds: 400),
                                  curve: Curves.easeIn);
                              setState(() {
                                _current = _current + 1;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 84,
                              height: 40,
                              padding: EdgeInsets.only(
                                  top: 8, bottom: 8, left: 16, right: 16),
                              //  onPressed: () {},
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(48),
                                color: ColorConstant.red900,
                              ),
                              child: Text(
                                "Tiếp",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            bottom: 0,
            left: 0,
            right: 0,
          ),
          Positioned(
            child: SizedBox(
              height: 150,
              child: Container(
                //height: 100,
                decoration: BoxDecoration(
                    color: Colors.red,
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.white.withOpacity(0.8),
                        Colors.white.withOpacity(0)
                      ],
                    )),
              ),
            ),
            bottom: 258,
            left: 0,
            right: 0,
          )
        ],
      ),
    );
    var thirdPage = Container(
      child: Stack(
        children: [
          Positioned.fill(
              bottom: 250,
              child: CustomImageView(
                imagePath: ImageConstant.onBoaring3,
                fit: BoxFit.cover,
              )),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(48),
                      topRight: Radius.circular(48))),
              height: 300,
              child: Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 40, bottom: 16),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Khám phá ",
                              style: TextStyle(
                                  fontFamily: "Sf pro",
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 20)),
                          TextSpan(
                              text: "những tin tức\n sự kiện ",
                              style: TextStyle(
                                  fontFamily: "Sf pro",
                                  fontWeight: FontWeight.w700,
                                  color: ColorConstant.red900,
                                  fontSize: 20)),
                          TextSpan(
                              text: "trong tỉnh ",
                              style: TextStyle(
                                  fontFamily: "Sf pro",
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 20)),
                        ],

                            style: TextStyle(height: 1.5)),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Sf pro",
                          fontWeight: FontWeight.w400,
                          color: Color(0xff240507),
                          fontSize: 16,
                            height: 1.25
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 48),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Bỏ qua",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConstant.red900),
                            ),
                          ),
                          Container(
                              height: getVerticalSize(6.00),
                              child: SmoothIndicator(
                                  offset: _current.toDouble(),
                                  count: 4,
                                  axisDirection: Axis.horizontal,
                                  effect: ScrollingDotsEffect(
                                      spacing: 4,
                                      activeDotColor: ColorConstant.amber400,
                                      dotColor: Colors.black.withOpacity(0.2),
                                      dotHeight: getVerticalSize(6.00),
                                      dotWidth: getHorizontalSize(6.00)))),
                          InkWell(
                            onTap: () {
                              controller.animateToPage(_current + 1,
                                  duration: Duration(milliseconds: 400),
                                  curve: Curves.easeIn);
                              setState(() {
                                _current = _current + 1;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 84,
                              height: 40,
                              padding: EdgeInsets.only(
                                  top: 8, bottom: 8, left: 16, right: 16),
                              //  onPressed: () {},
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(48),
                                color: ColorConstant.red900,
                              ),
                              child: Text(
                                "Tiếp",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            bottom: 0,
            left: 0,
            right: 0,
          ),
          Positioned(
            child: SizedBox(
              height: 150,
              child: Container(
                //height: 100,
                decoration: BoxDecoration(
                    color: Colors.red,
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.white.withOpacity(0.8),
                        Colors.white.withOpacity(0)
                      ],
                    )),
              ),
            ),
            bottom: 258,
            left: 0,
            right: 0,
          )
        ],
      ),
    );
    var fourPage = Container(
      child: Stack(
        children: [
          Positioned.fill(
              bottom: 250,
              child: CustomImageView(
                imagePath: ImageConstant.onBoaring4,
                fit: BoxFit.cover,
              )),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(48),
                      topRight: Radius.circular(48))),
              height: 300,
              child: Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 40, bottom: 16),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Khám phá các ",
                              style: TextStyle(
                                  fontFamily: "Sf pro",
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 20)),
                          TextSpan(
                              text: "lễ hội tiêu biểu\n ",
                              style: TextStyle(
                                  fontFamily: "Sf pro",
                                  fontWeight: FontWeight.w700,
                                  color: ColorConstant.red900,
                                  fontSize: 20)),
                          TextSpan(
                              text: "của tỉnh Thừa Thiên Huế ",
                              style: TextStyle(
                                  fontFamily: "Sf pro",
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 20)),
                        ],
                            style: TextStyle(height: 1.5)
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Sf pro",
                          fontWeight: FontWeight.w400,
                          color: Color(0xff240507),
                          fontSize: 16,
                            height: 1.25
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 48),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Bỏ qua",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConstant.red900),
                            ),
                          ),
                          Container(
                              height: getVerticalSize(6.00),
                              child: SmoothIndicator(
                                  offset: _current.toDouble(),
                                  count: 4,
                                  axisDirection: Axis.horizontal,
                                  effect: ScrollingDotsEffect(
                                      spacing: 4,
                                      activeDotColor: ColorConstant.amber400,
                                      dotColor: Colors.black.withOpacity(0.2),
                                      dotHeight: getVerticalSize(6.00),
                                      dotWidth: getHorizontalSize(6.00)))),
                          InkWell(
                            onTap: () {
                              controller.animateToPage(_current + 1,
                                  duration: Duration(milliseconds: 400),
                                  curve: Curves.easeIn);
                              setState(() {
                                _current = _current + 1;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 84,
                              height: 40,
                              padding: EdgeInsets.only(
                                  top: 8, bottom: 8, left: 16, right: 16),
                              //  onPressed: () {},
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(48),
                                color: ColorConstant.red900,
                              ),
                              child: Text(
                                "Tiếp",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            bottom: 0,
            left: 0,
            right: 0,
          ),
          Positioned(
            child: SizedBox(
              height: 150,
              child: Container(
                //height: 100,
                decoration: BoxDecoration(
                    color: Colors.red,
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.white.withOpacity(0.8),
                        Colors.white.withOpacity(0)
                      ],
                    )),
              ),
            ),
            bottom: 258,
            left: 0,
            right: 0,
          )
        ],
      ),
    );
    var fivePage = Container(
      child: Stack(
        children: [
          Positioned.fill(
              bottom: 250,
              child: CustomImageView(
                imagePath: ImageConstant.mapImg,
                fit: BoxFit.cover,
              )),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(48),
                      topRight: Radius.circular(48))),
              height: 300,
              child: Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 40, bottom: 16),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Khám phá ",
                              style: TextStyle(
                                  fontFamily: "Sf pro",
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 20)),
                          TextSpan(
                              text: "bản đồ lễ hội\n sự kiện ",
                              style: TextStyle(
                                  fontFamily: "Sf pro",
                                  fontWeight: FontWeight.w700,
                                  color: ColorConstant.red900,
                                  fontSize: 20)),
                          TextSpan(
                              text: "sắp diễn ra ",
                              style: TextStyle(
                                  fontFamily: "Sf pro",
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 20)),
                        ],
                            style: TextStyle(height: 1.5)
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Sf pro",
                          fontWeight: FontWeight.w400,
                          color: Color(0xff240507),
                          fontSize: 16,
                            height: 1.25
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 48),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Bỏ qua",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConstant.red900),
                            ),
                          ),
                          Container(
                              height: getVerticalSize(6.00),
                              child: SmoothIndicator(
                                  offset: _current.toDouble(),
                                  count: 4,
                                  axisDirection: Axis.horizontal,
                                  effect: ScrollingDotsEffect(
                                      spacing: 4,
                                      activeDotColor: ColorConstant.amber400,
                                      dotColor: Colors.black.withOpacity(0.2),
                                      dotHeight: getVerticalSize(6.00),
                                      dotWidth: getHorizontalSize(6.00)))),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _current = _current + 1;
                              });
                              Get.toNamed(AppRoutes.homeContainerScreen);

                            },
                            child: Container(
                              alignment: Alignment.center,
                              // width: 84,
                              height: 40,
                              padding: EdgeInsets.only(
                                  top: 8, bottom: 8, left: 16, right: 16),
                              //  onPressed: () {},
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(48),
                                color: ColorConstant.red900,
                              ),
                              child: Text(
                                "Bắt đầu",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            bottom: 0,
            left: 0,
            right: 0,
          ),
          Positioned(
            child: SizedBox(
              height: 150,
              child: Container(
                //height: 100,
                decoration: BoxDecoration(
                    color: Colors.red,
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.white.withOpacity(0.8),
                        Colors.white.withOpacity(0)
                      ],
                    )),
              ),
            ),
            bottom: 258,
            left: 0,
            right: 0,
          )
        ],
      ),
    );

    return Scaffold(
      body: PageView(
       // physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: [firstPage, secondPage, thirdPage, fourPage, fivePage],
      ),
    );
  }
}
