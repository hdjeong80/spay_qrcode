import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spay_qrcode/commons/appBar.dart';
import 'package:spay_qrcode/commons/custom_container.dart';
import 'package:spay_qrcode/commons/dynamicFontSize.dart';
import 'package:spay_qrcode/commons/heigh_sized_box.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(360, 690),
    );

    return AnnotatedRegion<SystemUiOverlayStyle>(
        child: Scaffold(
          appBar: customAppBar(
            '기타',
            16.sp,
            25.sp,
            true,
          ),
          body: SafeArea(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  VerticalSpace(25.h),
                  customContainer(
                    height: 110.h,
                    width: 324.sw,
                    color: Color.fromRGBO(82, 142, 242, 1),
                    radius: 18,
                    widget: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DynamicFontSize(
                          label: 'QR 코드 생성하기',
                          fontSize: 16.sp,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        )
                      ],
                    ),
                  ),
                  VerticalSpace(16.h),
                  customContainer(
                    height: 76.h,
                    width: 324.sw,
                    radius: 12,
                    color: Color.fromRGBO(233, 236, 239, 1),
                    widget: Center(
                        child: DynamicFontSize(
                      label: '이체하기',
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                    )),
                  ),
                  VerticalSpace(16.h),
                  customContainer(
                    height: 76.h,
                    width: 308.sw,
                    radius: 12,
                    color: Color.fromRGBO(233, 236, 239, 1),
                    widget: Center(
                        child: DynamicFontSize(
                      label: '로그아웃',
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                    )),
                  ),
                ],
              ),
            ),
          )),
        ),
        value: SystemUiOverlayStyle(
            statusBarColor: Color.fromRGBO(255, 255, 255, 1)));
  }
}
