import 'package:flutter/material.dart';
import 'package:freekit/presentation/core/constants/constants.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Image.asset(
          googleIcon,
          height: 50,
        ),
        label: const Text(
          'Continue with Google',
          style: TextStyle(
            fontFamily: 'Sora',
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: kWhite,
          foregroundColor: kBlack,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
        ),
      ),
    );
  }
}
