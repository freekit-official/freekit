import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

final ValueNotifier<int> indexChangeNotifier = ValueNotifier<int>(0);

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: indexChangeNotifier,
      builder: (context, value, child) => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (newValue) {
          indexChangeNotifier.value = newValue; // Update the index here
        },
        currentIndex: indexChangeNotifier.value, // The current index
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(LucideIcons.box), label: 'Tools'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
