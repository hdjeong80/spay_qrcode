import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spay_qrcode/commons/appBar.dart';
import 'package:spay_qrcode/commons/custom_container.dart';
import 'package:spay_qrcode/commons/dynamicFontSize.dart';
import 'package:spay_qrcode/commons/heigh_sized_box.dart';

class SeventhScreen extends StatefulWidget {
  @override
  _SeventhScreenState createState() => _SeventhScreenState();
}

class _SeventhScreenState extends State<SeventhScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(360, 690),
    );

    return Scaffold(
      appBar: customAppBar('금액넣기', 16.sp, 15.h, true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Column(
              children: [
                VerticalSpace(20.h),
                customContainer(
                  height: 94.h,
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromRGBO(82, 142, 242, 1),
                  radius: 10,
                  widget: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DynamicFontSize(
                              label: '5,000',
                              fontSize: 16.sp,
                              color: Colors.white,
                            ),
                            Container(
                              height: 24.h,
                              width: 24.w,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white30),
                              child: Center(
                                child: Icon(
                                  Icons.close,
                                  color: Colors.white,
                                  size: 16.h,
                                ),
                              ),
                            )
                          ],
                        ),
                        VerticalSpace(5.h),
                        Divider(
                          thickness: 1.h,
                          color: Color.fromRGBO(233, 236, 239, 1),
                        )
                      ],
                    ),
                  ),
                ),
                VerticalSpace(8.h),
                customContainer(
                  height: 63.h,
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromRGBO(233, 236, 239, 1),
                  radius: 8,
                  widget: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 28.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DynamicFontSize(
                            label: '메모',
                            fontSize: 16.sp,
                            color: Color.fromRGBO(134, 142, 150, 1),
                          ),
                          Container(
                            height: 24.h,
                            width: 24.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black12),
                            child: Center(
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 16.h,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                VerticalSpace(14.h),
                customContainer(
                  height: 48.h,
                  width: 222.w,
                  color: Color.fromRGBO(82, 142, 242, 1),
                  radius: 24,
                  widget: Center(
                    child: DynamicFontSize(
                      label: '완료',
                      fontSize: 16.sp,
                      color: Color.fromRGBO(248, 249, 250, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
