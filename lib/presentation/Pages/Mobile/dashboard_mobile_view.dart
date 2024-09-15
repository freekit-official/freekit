import 'package:flutter/material.dart';
import 'package:freekit/presentation/Pages/Mobile/Pages/mobile_category_page.dart';
import 'package:freekit/presentation/Pages/Mobile/Pages/mobile_home_page.dart';
import 'package:freekit/presentation/Pages/Mobile/Pages/mobile_profile_page.dart';
import 'package:freekit/presentation/Pages/Mobile/Pages/mobile_search_page.dart';
import 'package:freekit/presentation/Pages/Mobile/Pages/mobile_tools_page.dart';
import 'package:freekit/presentation/widgets/bottom_bar.dart';

class DashboardMobileView extends StatefulWidget {
  const DashboardMobileView({
    super.key,
  });
  @override
  State<DashboardMobileView> createState() => _DashboardMobileViewState();
}

const _pages = [
  MobileHomePage(),
  MobileSearchPage(),
  MobileToolsPage(),
  MobileCategoryPage(),
  MobileProfilePage(),
];

class _DashboardMobileViewState extends State<DashboardMobileView> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: indexChangeNotifier, // Specify the type here
      builder: (context, index, _) {
        return Scaffold(
          body: _pages[index], // Display the selected page
          bottomNavigationBar: const BottomBar(), // Use the BottomBar widget
        );
      },
    );
  }
}
