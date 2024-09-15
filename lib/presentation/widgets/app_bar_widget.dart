import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required this.title,
    this.icon,
    required this.isTrue,
  });
  final String title;
  final Icon? icon;
  final bool isTrue;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: const Text(
        'FreeKit',
        style: TextStyle(
          fontFamily: 'Sora',
          fontSize: 25,
          fontWeight: FontWeight.w700,
        ),
      ),
      centerTitle: isTrue,
    );
  }
}
