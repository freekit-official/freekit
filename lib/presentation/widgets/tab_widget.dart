import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: SizedBox(
          child: CustomScrollView(slivers: <Widget>[
        SliverFillRemaining(
          child: TabBarView(
            children: <Widget>[
              Text(
                "Tab 1",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                "Tab 2",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                "Tab 3",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ])),
    );
  }
}
