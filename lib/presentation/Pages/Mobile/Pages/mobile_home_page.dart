import 'package:flutter/material.dart';
import 'package:freekit/presentation/Pages/Mobile/web/Pages/category.dart';
import 'package:freekit/presentation/Pages/Mobile/web/Pages/home.dart';
import 'package:freekit/presentation/core/constants/constants.dart';
import 'package:freekit/presentation/widgets/app_bar_widget.dart';
import 'package:freekit/presentation/widgets/header_dashboard.dart';
import 'package:freekit/presentation/widgets/text_field.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const AppBarWidget(
            title: 'FreeKit',
            icon: Icon(Icons.search),
            isTrue: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  width: double.infinity,
                  height: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        dummy,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const TextFieldWidget(),
                      SizedBox(
                        height: 50,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  overlayColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Category Name',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                HeaderDashboard(
                  title: 'Tools',
                  name: 'Tool Name',
                  widget: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      LucideIcons.arrowRight,
                      color: Colors.white,
                    ),
                  ),
                  onTapfun: () => const Home(),
                ),
                HeaderDashboard(
                  title: 'Category',
                  name: 'Category Name',
                  widget: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      LucideIcons.arrowRight,
                      color: Colors.white,
                    ),
                  ),
                  onTapfun: () => const Category(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
