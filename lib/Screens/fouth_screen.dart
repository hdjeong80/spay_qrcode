import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spay_qrcode/commons/appBar.dart';
import 'package:spay_qrcode/commons/custom_ListTile.dart';
import 'package:spay_qrcode/commons/custom_container.dart';
import 'package:spay_qrcode/commons/dynamicFontSize.dart';
import 'package:spay_qrcode/commons/heigh_sized_box.dart';

enum Page { first, second }

class NewSettingScreen extends StatefulWidget {
  @override
  _NewSettingScreenState createState() => _NewSettingScreenState();
}

class _NewSettingScreenState extends State<NewSettingScreen> {
  Page _selectedPage = Page.first;
  bool isSelected = false;

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
        title: DynamicFontSize(
          label: '기타',
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
          color: Color.fromRGBO(17, 17, 17, 1),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 18.0.w, right: 19.w),
            child: DynamicFontSize(
              label: '로그아웃',
              fontSize: 14.sp,
              color: Color.fromRGBO(82, 142, 242, 1),
            ),
          )
        ],
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                VerticalSpace(20.h),
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
                VerticalSpace(10.h),
                customContainer(
                  height: 76.h,
                  width: 324.w,
                  color: Color.fromRGBO(233, 236, 239, 1),
                  radius: 12,
                  widget: Center(
                      child: DynamicFontSize(
                    label: '이체하기',
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp,
                  )),
                ),
                VerticalSpace(20.h),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          _selectedPage = Page.first;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: _selectedPage == Page.first
                                ? BorderRadius.circular(20)
                                : BorderRadius.circular(0),
                            color: _selectedPage == Page.first
                                ? Color.fromRGBO(241, 243, 245, 1)
                                : Colors.white),
                        child: Center(
                            child: DynamicFontSize(
                          label: '최근 이용한 계좌',
                          fontSize: 12.sp,
                        )),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          _selectedPage = Page.second;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: _selectedPage == Page.second
                                ? BorderRadius.circular(20)
                                : BorderRadius.circular(0),
                            color: _selectedPage == Page.second
                                ? Color.fromRGBO(241, 243, 245, 1)
                                : Colors.white),
                        child: Center(
                            child: DynamicFontSize(
                          label: '등록된 친구',
                          fontSize: 12.sp,
                        )),
                      ),
                    )),
                  ],
                ),
                VerticalSpace(15.h),
                _loadScreen()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _loadScreen() {
    switch (_selectedPage) {
      case Page.first:
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 520.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: Color.fromRGBO(247, 247, 247, 1)),
          child: Column(
            children: [
              VerticalSpace(10.h),
              customListTile(
                  leadingImage: 'assets/1.png',
                  imageHeight: 100.h,
                  titleText: '이상이',
                  titleFont: 14.sp,
                  verticalSpaceHeight: 5.h,
                  subtitleText: '신한 1102384425259',
                  subtitleFont: 10.sp,
                  hasIcon: true,
                  iconSize: 22.h),
              VerticalSpace(10.h),
              customListTile(
                leadingImage: 'assets/2.png',
                imageHeight: 100.h,
                titleText: '박재정',
                titleFont: 14.sp,
                verticalSpaceHeight: 5.h,
                subtitleText: '신한 1102384425259',
                subtitleFont: 10.sp,
                hasIcon: false,
              ),
              VerticalSpace(10.h),
              customListTile(
                leadingImage: 'assets/3.png',
                imageHeight: 100.h,
                titleText: '지석진',
                titleFont: 14.sp,
                verticalSpaceHeight: 5.h,
                subtitleText: '신한 1102384425259',
                subtitleFont: 10.sp,
                hasIcon: true,
                iconSize: 22.h,
              ),
              VerticalSpace(10.h),
              customListTile(
                leadingImage: 'assets/4.png',
                imageHeight: 100.h,
                titleText: '강창모',
                titleFont: 14.sp,
                verticalSpaceHeight: 5.h,
                subtitleText: '신한 1102384425259',
                subtitleFont: 10.sp,
                hasIcon: false,
              ),
              VerticalSpace(10.h),
              customListTile(
                leadingImage: 'assets/2.png',
                imageHeight: 100.h,
                titleText: '강창모',
                titleFont: 14.sp,
                verticalSpaceHeight: 5.h,
                subtitleText: '신한 1102384425259',
                subtitleFont: 10.sp,
                hasIcon: true,
                iconSize: 22.h,
              ),
              VerticalSpace(10.h),
              customListTile(
                leadingImage: 'assets/5.png',
                imageHeight: 100.h,
                titleText: '유재석',
                titleFont: 14.sp,
                verticalSpaceHeight: 5.h,
                subtitleText: '신한 1102384425259',
                subtitleFont: 10.sp,
                hasIcon: false,
              ),
              VerticalSpace(10.h),
            ],
          ),
        );
        break;
      case Page.second:
        return Text('');
        break;
      default:
        return Container();
    }
  }
}
