import 'package:flutter/material.dart';
import 'package:spay_qrcode/Screens/eight_screen.dart';
import 'package:spay_qrcode/Screens/fifth_screen.dart';
import 'package:spay_qrcode/Screens/setting_screen.dart';
import 'package:spay_qrcode/Screens/fouth_screen.dart';
import 'package:spay_qrcode/Screens/login.dart';
import 'package:spay_qrcode/Screens/ninth_screen.dart';
import 'package:spay_qrcode/Screens/wallet_screen.dart';
import 'package:spay_qrcode/Screens/seventh_screen.dart';
import 'package:spay_qrcode/Screens/sixth_screen.dart';
import 'package:spay_qrcode/Screens/notification_screen.dart';
import 'package:spay_qrcode/commons/home_screen.dart';

class ScreenView extends StatefulWidget {
  @override
  _ScreenViewState createState() => _ScreenViewState();
}

class _ScreenViewState extends State<ScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => LoginScreen()));
                    },
                    child: Text('Login')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => HomeScreen()));
                    },
                    child: Text('Bottom Nav Bar')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => SettingScreen()));
                    },
                    child: Text('First')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => WalletScreen()));
                    },
                    child: Text('Second')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => NotificationScreen()));
                    },
                    child: Text('Third')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => NewSettingScreen()));
                    },
                    child: Text('Fourth')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => FifthScreen()));
                    },
                    child: Text('Fifth')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => SixthScreen()));
                    },
                    child: Text('Sixth')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => SeventhScreen()));
                    },
                    child: Text('Seventh')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => EightScreen()));
                    },
                    child: Text('Eight')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => NinthScreen()));
                    },
                    child: Text('Ninth')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
