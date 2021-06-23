import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spay_qrcode/commons/dynamicFontSize.dart';
import 'package:spay_qrcode/commons/heigh_sized_box.dart';

class NinthScreen extends StatefulWidget {
  @override
  _NinthScreenState createState() => _NinthScreenState();
}

class _NinthScreenState extends State<NinthScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(360, 690),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        leading: Icon(
          Icons.close,
          color: Colors.black,
        ),
        title: DynamicFontSize(
          label: '코드스캔',
          fontSize: 16.sp,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 10.h, right: 10.w),
            child: DynamicFontSize(
              label: '앨범',
              fontSize: 15.sp,
              color: Color.fromRGBO(82, 142, 242, 1),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 400.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/7.png'))),
                child: Center(
                  child: Icon(
                    Icons.qr_code_scanner_rounded,
                    size: 90.h,
                    color: Colors.yellow,
                  ),
                ),
              ),
              VerticalSpace(20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: DynamicFontSize(
                    label:
                        'QR코드/바코드를 스캔하거나 QR 이미지를 업로드 해보세요.( 친구/채널 추가, 송금, 결제, 공과금 납부 등 이용가능)',
                    fontSize: 12.sp),
              ),
              VerticalSpace(20.h),
              Icon(
                Icons.qr_code_scanner_rounded,
                size: 50.h,
                color: Color.fromRGBO(82, 142, 242, 1),
              ),
              VerticalSpace(10.h),
              DynamicFontSize(
                label: '코드스캔',
                fontSize: 12.sp,
                color: Color.fromRGBO(82, 142, 242, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
