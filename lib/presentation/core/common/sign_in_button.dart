import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton(
      {super.key,
      required this.text,
      required this.background,
      required this.foreground,
      required this.padding,
      required this.onPressed});
  final String text;
  final Color background;
  final Color foreground;
  final double padding;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: padding),
      width: size.width,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: background,
          foregroundColor: foreground,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: 'Sora',
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
