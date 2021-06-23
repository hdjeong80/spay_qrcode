import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spay_qrcode/commons/appBar.dart';
import 'package:spay_qrcode/commons/color_container.dart';
import 'package:spay_qrcode/commons/custom_tile.dart';
import 'package:spay_qrcode/commons/dynamicFontSize.dart';
import 'package:spay_qrcode/commons/heigh_sized_box.dart';
import 'package:spay_qrcode/commons/appBar.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(360, 690),
    );

    return Scaffold(
      appBar: customAppBar(
        '알림',
        16.sp,
        0,
        false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Container(
              height: MediaQuery.of(context).size.height - 60,
              child: ListView.separated(
                itemCount: 18,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: CustomTile(
                      containerColor: Color.fromRGBO(250, 100, 0, 1),
                      firstText: '공지',
                      firstTextColor: Color.fromRGBO(0, 0, 0, 1),
                      secondText: '10분전',
                      secondTextColor: Color.fromRGBO(134, 142, 150, 1),
                      thirdText: '공지사항이 있습니다. 가나다라 마바사공지를 시작합니다.',
                      thirdTextColor: Color.fromRGBO(0, 0, 0, 1),
                      fourthText: '',
                      fourthTextColor: Colors.white,
                      isFour: false,
                      iconColor: Color.fromRGBO(173, 181, 189, 1),
                    ),
                  );
                },
                separatorBuilder: (_, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Divider(
                    thickness: 2.h,
                    color: Color.fromRGBO(233, 236, 239, 1),
                  ),
                ),
              ),
            ),

            // customTile(
            //   containerColor: Color.fromRGBO(250, 100, 0, 1),
            //   firstText: '공지',
            //   firstTextColor: Color.fromRGBO(0, 0, 0, 1),
            //   secondText: '10분전',
            //   secondTextColor: Color.fromRGBO(134, 142, 150, 1),
            //   thirdText: '공지사항이 있습니다. 가나다라 마바사공지를 시작합니다.',
            //   thirdTextColor: Color.fromRGBO(0, 0, 0, 1),
            //   fourthText: '',
            //   fourthTextColor: Colors.white,
            //   isFour: false,
            //   iconColor: Color.fromRGBO(173, 181, 189, 1),
            // ),
            //
            //     VerticalSpace(10.h),
            //
            //     Divider(thickness: 2.h, color: Color.fromRGBO(233, 236, 239, 1),),
            //
            //     VerticalSpace(10.h),
            //
            //     customTile(
            //       isFour: true,
            //       containerColor: Color.fromRGBO(247, 181, 0, 1),
            //       firstText: '출금',
            //       firstTextColor: Color.fromRGBO(0, 0, 0, 1),
            //       secondText: '04.04 13:30',
            //       secondTextColor: Color.fromRGBO(134, 142, 150, 1),
            //       thirdText: '국민ATM출금',
            //       thirdTextColor: Color.fromRGBO(0, 0, 0, 1),
            //       fourthText: '-100,000원',
            //       fourthTextColor: Color.fromRGBO(0, 0, 0, 1),
            //       iconColor: Color.fromRGBO(173, 181, 189, 1),
            //     ),
            //
            //     VerticalSpace(10.h),
            //
            //     Divider(thickness: 2.h, color: Color.fromRGBO(233, 236, 239, 1),),
            //
            //     VerticalSpace(10.h),
            //
            //     customTile(
            //       isFour: true,
            //       containerColor: Color.fromRGBO(2, 91, 240, 1),
            //       firstText: '입금',
            //       firstTextColor: Color.fromRGBO(0, 0, 0, 1),
            //       secondText: '04.04 10:24',
            //       secondTextColor: Color.fromRGBO(134, 142, 150, 1),
            //       thirdText: '정지범',
            //       thirdTextColor: Color.fromRGBO(0, 0, 0, 1),
            //       fourthText: '100,000원',
            //       fourthTextColor: Color.fromRGBO(0, 0, 0, 1),
            //       iconColor: Color.fromRGBO(173, 181, 189, 1),
            //     ),
            //
            //     VerticalSpace(10.h),
            //
            //     Divider(thickness: 2.h, color: Color.fromRGBO(233, 236, 239, 1),),
            //
            //     VerticalSpace(10.h),
            //
            //     customTile(
            //       isFour: true,
            //       containerColor: Color.fromRGBO(247, 181, 0, 1),
            //       firstText: '출금',
            //       firstTextColor: Color.fromRGBO(0, 0, 0, 1),
            //       secondText: '03.22 17:30',
            //       secondTextColor: Color.fromRGBO(134, 142, 150, 1),
            //       thirdText: '국민ATM출금',
            //       thirdTextColor: Color.fromRGBO(0, 0, 0, 1),
            //       fourthText: '200,000원',
            //       fourthTextColor: Color.fromRGBO(0, 0, 0, 1),
            //       iconColor: Color.fromRGBO(173, 181, 189, 1),
            //     ),
            //
            //
            //     VerticalSpace(10.h),
            //
            //     Divider(thickness: 2.h, color: Color.fromRGBO(233, 236, 239, 1),),
            //
            //     VerticalSpace(10.h),
            //
            //     customTile(
            //       isFour: true,
            //       containerColor: Color.fromRGBO(2, 91, 240, 1),
            //       firstText: '입금',
            //       firstTextColor: Color.fromRGBO(0, 0, 0, 1),
            //       secondText: '03.22 15:54',
            //       secondTextColor: Color.fromRGBO(134, 142, 150, 1),
            //       thirdText: '정지범',
            //       thirdTextColor: Color.fromRGBO(0, 0, 0, 1),
            //       fourthText: '200,000원',
            //       fourthTextColor: Color.fromRGBO(0, 0, 0, 1),
            //       iconColor: Color.fromRGBO(173, 181, 189, 1),
            //     ),
            //
            //
            //     VerticalSpace(10.h),
            //
            //     Divider(thickness: 2.h, color: Color.fromRGBO(233, 236, 239, 1),),
            //
            //     VerticalSpace(10.h),
            //
            //     customTile(
            //       isFour: true,
            //       containerColor: Color.fromRGBO(247, 181, 0, 1),
            //       firstText: '출금',
            //       firstTextColor: Color.fromRGBO(0, 0, 0, 1),
            //       secondText: '01.23 16:30',
            //       secondTextColor: Color.fromRGBO(134, 142, 150, 1),
            //       thirdText: '국민ATM출금',
            //       thirdTextColor: Color.fromRGBO(0, 0, 0, 1),
            //       fourthText: '-500,000원',
            //       fourthTextColor: Color.fromRGBO(0, 0, 0, 1),
            //       iconColor: Color.fromRGBO(173, 181, 189, 1),
            //     ),
            //
            //     VerticalSpace(10.h),
            //
            //     Divider(thickness: 2.h, color: Color.fromRGBO(233, 236, 239, 1),),
            //
            //     VerticalSpace(10.h),
          ),
        ),
      ),
    );
  }
}
