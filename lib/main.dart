import 'package:flutter/material.dart';
import 'package:freekit/presentation/Pages/Mobile/Pages/features/authentication/responsive_authentication_page.dart';
// import 'package:freekit/presentation/Pages/dashboard.dart';
import 'package:freekit/presentation/core/theme/theme.dart';

main() {
  runApp(
    const FreeKit(),
  );
}

class FreeKit extends StatelessWidget {
  const FreeKit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FreeKit',
      home: const ResponsiveAuthenticationPage(),
      themeMode: ThemeMode.system,
      theme: Palete.lightTheme,
    );
  }
}
