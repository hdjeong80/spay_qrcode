import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spay_qrcode/commons/appBar.dart';
import 'package:spay_qrcode/commons/custom_container.dart';
import 'package:spay_qrcode/commons/dynamicFontSize.dart';
import 'package:spay_qrcode/commons/heigh_sized_box.dart';

class SixthScreen extends StatefulWidget {
  @override
  _SixthScreenState createState() => _SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen> {
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
                        DynamicFontSize(
                          label: '받을 금액(원)',
                          fontSize: 16.sp,
                          color: Colors.white,
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
                          DynamicFontSize(
                            label: '최대 12자',
                            fontSize: 16.sp,
                            color: Color.fromRGBO(134, 142, 150, 1),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                VerticalSpace(14.h),
                customContainer(
                  height: 48.h,
                  width: 222.w,
                  color: Color.fromRGBO(241, 243, 245, 1),
                  radius: 24,
                  widget: Center(
                    child: DynamicFontSize(
                      label: '완료',
                      fontSize: 16.sp,
                      color: Color.fromRGBO(73, 80, 87, 1),
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
