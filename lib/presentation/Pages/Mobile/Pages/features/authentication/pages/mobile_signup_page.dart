import 'package:flutter/material.dart';
import 'package:freekit/presentation/Pages/Mobile/Pages/features/authentication/pages/mobile_login_page.dart';
import 'package:freekit/presentation/core/common/google_sign_in_button.dart';
import 'package:freekit/presentation/core/common/sign_in_button.dart';
import 'package:freekit/presentation/core/common/text_bar_widget.dart';
import 'package:freekit/presentation/core/constants/constants.dart';

class MobileSignUpPage extends StatelessWidget {
  const MobileSignUpPage({super.key});

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
          const SizedBox(
            height: 10,
          ),
          const GoogleSignInButton(),
          const Text('or'),
          const TextBarWidget(
            size: double.maxFinite,
            hint: 'Username',
            isObscure: true,
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
          const SizedBox(
            height: 12,
          ),
          SignInButton(
            text: 'Sign Up',
            background: kBlue,
            foreground: kWhite,
            padding: 7,
            onPressed: () {},
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'Already have an account?',
                style: TextStyle(
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.normal,
                ),
              ),
              InkWell(
                child: const Text(
                  '  Log In',
                  style: TextStyle(
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MobileLoginPage(),
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
