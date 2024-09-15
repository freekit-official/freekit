import 'package:flutter/material.dart';
import 'package:freekit/presentation/core/common/sign_in_button.dart';
import 'package:freekit/presentation/core/common/text_bar_widget.dart';
import 'package:freekit/presentation/core/constants/constants.dart';

class DesktopLoginPage extends StatelessWidget {
  const DesktopLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFf2f4f7),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Column(
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
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  const Text(
                    'FreeKit empowers creators with unlimited\n assets for boundless creativity.',
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: size.width / 3,
              height: size.width / 3,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                border: Border.all(
                  color: const Color.fromARGB(32, 179, 179, 179),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Log In to FreeKit',
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  TextBarWidget(
                    hint: 'username@gmail.com',
                    isObscure: false,
                    size: double.maxFinite,
                  ),
                  TextBarWidget(
                    hint: 'Password',
                    isObscure: true,
                    size: double.maxFinite,
                  ),
                  SignInButton(
                    text: 'Log In',
                    background: kBlue,
                    foreground: kWhite,
                    padding: 7,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: kBlue,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Sora',
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.3,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SignInButton(
                    text: 'Create new account',
                    background: Colors.green,
                    foreground: kWhite,
                    padding: 7,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
