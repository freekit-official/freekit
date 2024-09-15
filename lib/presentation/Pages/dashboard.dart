import 'package:flutter/material.dart';
import 'package:freekit/presentation/Pages/DeskTop/dashboard_desktop_view.dart';
import 'package:freekit/presentation/Pages/Mobile/dashboard_mobile_view.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 700) {
            return const DashboardDesktopView();
          } else {
            return const DashboardMobileView();
          }
        },
      ),
    );
  }
}
