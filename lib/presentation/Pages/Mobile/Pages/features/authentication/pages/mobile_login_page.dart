import 'package:flutter/material.dart';
import 'package:freekit/presentation/core/common/sign_in_button.dart';
import 'package:freekit/presentation/core/common/text_bar_widget.dart';
import 'package:freekit/presentation/core/constants/constants.dart';

class MobileLoginPage extends StatelessWidget {
  const MobileLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            logo,
            height: 100,
          ),
          const Text(
            'FreeKit',
            style: TextStyle(
              fontFamily: 'Sora',
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          const TextBarWidget(
            size: double.maxFinite,
            hint: 'username@gmail.com',
            isObscure: false,
          ),
          const TextBarWidget(
            size: double.maxFinite,
            hint: 'Password',
            isObscure: true,
          ),
          const SignInButton(
            text: 'Login',
            background: kBlue,
            foreground: kWhite,
            padding: 7,
          ),
        ],
      ),
    );
  }
}
