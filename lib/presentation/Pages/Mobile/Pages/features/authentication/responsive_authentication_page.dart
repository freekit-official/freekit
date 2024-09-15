import 'package:flutter/material.dart';
import 'package:freekit/presentation/Pages/DeskTop/Pages/features/authentication/pages/desktop_login_page.dart';
import 'package:freekit/presentation/Pages/Mobile/Pages/features/authentication/pages/mobile_login_page.dart';

class ResponsiveAuthenticationPage extends StatelessWidget {
  const ResponsiveAuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1230) {
          return const DesktopLoginPage();
        } else {
          return const MobileLoginPage();
        }
      },
    );
  }
}
