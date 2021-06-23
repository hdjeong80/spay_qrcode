import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spay_qrcode/commons/appBar.dart';
import 'package:spay_qrcode/commons/dynamicFontSize.dart';
import 'package:spay_qrcode/commons/heigh_sized_box.dart';

class WalletScreen extends StatefulWidget {
  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(360, 690),
    );

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarColor: Color.fromRGBO(255, 255, 255, 1)),
      child: Scaffold(
        appBar: customAppBar(
          '지갑',
          16.sp,
          25.sp,
          false,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  VerticalSpace(17),
                  Container(
                    height: 116.h,
                    width: 324.sw,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(82, 142, 242, 1),
                        borderRadius: BorderRadius.circular(18)),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 18.0, left: 18, right: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DynamicFontSize(
                                label: '홍길동의 지갑',
                                fontSize: 10.sp,
                                color: Color.fromRGBO(255, 255, 255, 0.85),
                              ),
                              VerticalSpace(7.h),
                              DynamicFontSize(
                                label: '3333-01-7487442',
                                fontSize: 12.sp,
                                color: Color.fromRGBO(255, 255, 255, 0.85),
                              ),
                              VerticalSpace(9.2.h),
                              DynamicFontSize(
                                label: '2,464원',
                                fontSize: 22.sp,
                                color: Color.fromRGBO(255, 255, 255, 0.85),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 35),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19),
                                color: Colors.white),
                            child: DynamicFontSize(
                              label: '이체',
                              fontSize: 14.sp,
                              color: Color.fromRGBO(82, 142, 242, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  VerticalSpace(13.h),
                  Container(
                    height: 400.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromRGBO(249, 249, 249, 1)),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.search,
                                  size: 22.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 3.0),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        child: DynamicFontSize(
                                            label: '1개월', fontSize: 14.sp),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        child: DynamicFontSize(
                                            label: '.', fontSize: 14.sp),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        child: DynamicFontSize(
                                            label: '전체', fontSize: 14.sp),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        child: DynamicFontSize(
                                          label: '.',
                                          fontSize: 14.sp,
                                          color:
                                              Color.fromRGBO(82, 142, 242, 1),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        child: DynamicFontSize(
                                          label: '1개월',
                                          fontSize: 14.sp,
                                          color:
                                              Color.fromRGBO(82, 142, 242, 1),
                                        ),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 2.0),
                                          child: Icon(
                                            Icons.arrow_drop_down,
                                            size: 30,
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            ),

                            VerticalSpace(6.h),

                            Divider(
                              thickness: 2.h,
                              color: Color.fromRGBO(233, 236, 239, 1),
                            ),

                            VerticalSpace(2.h),

                            Container(
                              height: 300.h,
                              width: double.infinity,
                              child: ListView.builder(
                                  itemCount: 6,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (_, index) {
                                    return ListTile(
                                      leading: DynamicFontSize(
                                        label: '04.04',
                                        fontSize: 12.sp,
                                        color: Color.fromRGBO(173, 181, 189, 1),
                                      ),
                                      title: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          DynamicFontSize(
                                            label: '국민ATM출금',
                                            fontSize: 14.sp,
                                            color:
                                                Color.fromRGBO(17, 17, 17, 1),
                                          ),
                                          VerticalSpace(2.h),
                                          DynamicFontSize(
                                            label: '#현금출금',
                                            fontSize: 12.sp,
                                            color:
                                                Color.fromRGBO(247, 181, 0, 1),
                                          ),
                                        ],
                                      ),
                                      trailing: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          DynamicFontSize(
                                            label: '-100,000원',
                                            fontSize: 14.sp,
                                            color:
                                                Color.fromRGBO(17, 17, 17, 1),
                                          ),
                                          VerticalSpace(2.h),
                                          DynamicFontSize(
                                            label: '2939원',
                                            fontSize: 12.sp,
                                            color:
                                                Color.fromRGBO(17, 17, 17, 1),
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                            )

                            //
                            // VerticalSpace(6.h),
                            //
                            // ListTile(
                            //   leading:  DynamicFontSize(label: '04.04', fontSize: 12.sp, color:
                            //   Color.fromRGBO(173, 181, 189, 1),),
                            //
                            //   title: Column(
                            //     crossAxisAlignment: CrossAxisAlignment.start,
                            //     children: [
                            //       DynamicFontSize(label: '국민ATM출금', fontSize: 14.sp, color:
                            //       Color.fromRGBO(17, 17, 17, 1),),
                            //
                            //
                            //     ],
                            //   ),
                            //
                            //   trailing: Padding(
                            //     padding: const EdgeInsets.only(top:4.0),
                            //     child: Column(
                            //       crossAxisAlignment: CrossAxisAlignment.end,
                            //       children: [
                            //         DynamicFontSize(label: '-100,000원', fontSize: 14.sp, color:
                            //         Color.fromRGBO(17, 17, 17, 1),),
                            //
                            //         VerticalSpace(2.h),
                            //
                            //         DynamicFontSize(label: '2939원', fontSize: 12.sp, color:
                            //         Color.fromRGBO(17, 17, 17, 1),),
                            //       ],
                            //     ),
                            //   ),
                            //
                            //
                            // ),
                            //
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
