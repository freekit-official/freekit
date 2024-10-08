import 'package:flutter/material.dart';
import 'package:freekit/presentation/Pages/DeskTop/Pages/features/authentication/pages/desktop_signup_page.dart';
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Log In to FreeKit',
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  const TextBarWidget(
                    hint: 'username@gmail.com',
                    isObscure: false,
                    size: double.maxFinite,
                  ),
                  const TextBarWidget(
                    hint: 'Password',
                    isObscure: true,
                    size: double.maxFinite,
                  ),
                  SignInButton(
                    text: 'Log In',
                    background: kBlue,
                    foreground: kWhite,
                    padding: 7,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: kBlue,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Sora',
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 0.3,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SignInButton(
                    text: 'Create new account',
                    background: Colors.green,
                    foreground: kWhite,
                    padding: 7,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const DesktopSignupPage(),
                        ),
                      );
                    },
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
