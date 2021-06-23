import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_login/theme.dart';
import 'package:get/get.dart';
import 'package:spay_qrcode/commons/home_screen.dart';

import 'Screen_Viewver.dart';

const users = const {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
  '1@1.com': '123456',
};

class LoginScreen extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return '이메일을 확인해주세요.';
      }
      if (users[data.name] != data.password) {
        return '비밀번호를 확인해주세요.';
      }
      return null;
    });
  }

  Future<String?> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return '이메일 주소를 확인해주세요.';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      logo: 'assets/spay_logo_3.png',
      // showDebugButtons: true,
      messages: LoginMessages(
          recoverPasswordSuccess: '이메일이 전송되었습니다.',
          flushbarTitleSuccess: '성공',
          flushbarTitleError: '오류',
          confirmPasswordError: '비밀번호를 다시 확인해주세요.',
          userHint: '이메일을 적어주세요.',
          passwordHint: '비밀번호',
          loginButton: '로그인',
          forgotPasswordButton: '비밀번호 찾기',
          signupButton: '회원가입',
          recoverPasswordButton: '재설정 링크 전송',
          recoverPasswordIntro: '비밀번호를 재설정합니다.',
          recoverPasswordDescription:
              '가입시 사용했던 이메일 주소를 입력해주시면 비밀번호 재설정 링크를 보내드립니다.',
          goBackButton: '뒤로가기',
          confirmPasswordHint: '비밀번호 확인'),
      userValidator: (val) {
        if (val == null ? false : val.isEmpty) {
          return '이메일을 확인해주세요.';
        }
      },
      passwordValidator: (val) {
        if (val == null ? false : val.length < 6) {
          return '비밀번호가 너무 짧습니다.';
        }
      },
      onLogin: _authUser,
      onSignup: _authUser,
      onSubmitAnimationCompleted: () {
        // Get.off(() => BottomNavBar());
        Get.off(() => ScreenView());
        // Navigator.of(context).pushReplacement(MaterialPageRoute(
        //   builder: (context) => DashboardScreen(),
        // ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
