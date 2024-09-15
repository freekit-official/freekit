import 'package:flutter/material.dart';

class DesktopHome extends StatelessWidget {
  const DesktopHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CarouselView(
              itemExtent: 20,
              children: [
                Container(
                  color: Colors.black,
                  width: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
