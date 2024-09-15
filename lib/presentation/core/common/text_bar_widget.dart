import 'package:flutter/material.dart';

class TextBarWidget extends StatelessWidget {
  const TextBarWidget(
      {super.key,
      required this.hint,
      required this.isObscure,
      required this.size});
  final String hint;
  final bool isObscure;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintStyle: const TextStyle(
            fontFamily: 'Sora',
          ),
        ),
        obscureText: isObscure,
      ),
    );
  }
}
