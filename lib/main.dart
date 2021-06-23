import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spay_qrcode/Screens/login.dart';
import 'Screens/Screen_Viewver.dart';
import 'Screens/eight_screen.dart';
import 'Screens/fifth_screen.dart';
import 'Screens/setting_screen.dart';
import 'Screens/fouth_screen.dart';
import 'Screens/ninth_screen.dart';
import 'Screens/wallet_screen.dart';
import 'Screens/seventh_screen.dart';
import 'Screens/sixth_screen.dart';
import 'Screens/notification_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Color.fromRGBO(255, 255, 255, 1),
          primarySwatch: Colors.blue,
        ),
        home: LoginScreen(),
      ),
    );
  }
}
