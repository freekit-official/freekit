import 'package:flutter/material.dart';
import 'package:freekit/presentation/Pages/Mobile/Pages/mobile_home_page.dart';

import '../constants/constants.dart';

class GuestSignIn extends StatelessWidget {
  const GuestSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const MobileHomePage()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: kWhite,
          foregroundColor: kBlack,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
        ),
        child: const Text(
          'Continue as Guest',
          style: TextStyle(
            fontFamily: 'Sora',
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
