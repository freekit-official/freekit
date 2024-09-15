import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MobileProfilePage extends StatelessWidget {
  const MobileProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'FreeMix',
            style: TextStyle(
              fontFamily: 'Sora',
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const CircleAvatar(
                radius: 67,
              ),
              const Text(
                'Username',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              const Text(
                'username@gmail.com',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    LucideIcons.galleryVerticalEnd,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Saved',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Sora',
                      fontSize: 21,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}
