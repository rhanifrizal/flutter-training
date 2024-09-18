import 'package:flutter/material.dart';

class ListViewLayout extends StatelessWidget {
  const ListViewLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "ListView Layout";
    final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F'];
    final List<int> colorCodes = <int>[600, 500, 400, 300, 200, 100];
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: ListView.builder( // ListView.separated to separate each widget
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        // separatorBuilder: (BuildContext context, int index) {
        //   return Divider();
        // },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.green[colorCodes[index]],
            child: Center(child: Text('Entry ${entries[index]}')),
          );
        },
      )
    );
  }
}
