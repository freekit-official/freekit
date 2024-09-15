import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freekit/presentation/widgets/app_bar_widget.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MobileSearchPage extends StatefulWidget {
  const MobileSearchPage({super.key});

  @override
  State<MobileSearchPage> createState() => _MobileSearchPageState();
}

List<String> items = [
  'Item 1',
  'Item 2',
  'Item 3',
  'Item 1',
  'Item 2',
  'Item 3'
];

class _MobileSearchPageState extends State<MobileSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const AppBarWidget(
            title: 'FreeKit',
            icon: Icon(Icons.search),
            isTrue: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 1,
              (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: const CupertinoSearchTextField(
                    padding: EdgeInsets.symmetric(
                      vertical: 13,
                    ),
                  ),
                );
              },
            ),
          ),
          SliverList.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: Key(items[index]),
                background: Container(
                  color: Colors.red,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(LucideIcons.trash2),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                onDismissed: (direction) {
                  setState(() {
                    items.removeAt(index);
                  });
                },
                child: ListTile(
                  title: const Text('Recently Searched...'),
                  trailing: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {},
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
