import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spay_qrcode/commons/custom_container.dart';
import 'package:spay_qrcode/commons/dynamicFontSize.dart';
import 'package:spay_qrcode/commons/heigh_sized_box.dart';
import 'package:spay_qrcode/commons/horizontal_sized_box.dart';

class FifthScreen extends StatefulWidget {
  @override
  _FifthScreenState createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(360, 690),
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(82, 142, 242, 1),
      appBar: AppBar(
        title: DynamicFontSize(
          label: '송금코드',
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Icon(
          Icons.close,
          color: Colors.white,
          size: 18.h,
        ),
        backgroundColor: Color.fromRGBO(82, 142, 242, 1),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: 200.h,
                width: 200.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Image.asset(
                  'assets/6.png',
                  height: 160.h,
                  width: 160.w,
                ),
              ),
              VerticalSpace(15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 24.h,
                    width: 24.w,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(82, 142, 242, 1),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white)),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  HorizontalSpace(10.w),
                  DynamicFontSize(
                    label: '금액넣기',
                    fontSize: 16.sp,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .08,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Divider(
                  thickness: 1.h,
                  color: Color.fromRGBO(233, 236, 239, 1),
                ),
              ),
              VerticalSpace(15.h),
              DynamicFontSize(
                label: '위 코드로 송금을 받을 수 있습니다.',
                fontSize: 14.sp,
                color: Colors.white,
              ),
              VerticalSpace(20.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: InkWell(
                  onTap: () {},
                  child: customContainer(
                    height: 63.h,
                    width: double.infinity,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    radius: 12,
                    widget: Center(
                      child: DynamicFontSize(
                        label: 'F14E32',
                        fontSize: 24.sp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
