import 'package:flutter/material.dart';
import 'package:freekit/presentation/Pages/Mobile/Pages/features/authentication/pages/mobile_signup_page.dart';
import 'package:freekit/presentation/core/common/google_sign_in_button.dart';
import 'package:freekit/presentation/core/common/guest_sign_in.dart';
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
          const GoogleSignInButton(),
          const GuestSignIn(),
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
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Forgot password?',
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: kBlack,
                  fontFamily: 'Sora',
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          SignInButton(
            text: 'Login',
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
                'Doesn\'t have an account?',
                style: TextStyle(
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.normal,
                ),
              ),
              InkWell(
                child: const Text(
                  '  SignUp',
                  style: TextStyle(
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MobileSignUpPage(),
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
