import 'package:flutter/material.dart';

class FittedBoxLayout extends StatelessWidget {
  const FittedBoxLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "FittedBox Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Container(
        height: 400,
        width: 300,
        color: Colors.green,
        child: const FittedBox(
          // fill: fill the widget by distorting the source aspect ratio
          // contain: as large as possible while still containing the whole source
          // cover: To cover the entire widget, some of the source might get clip
          // fitWidth: To fill the width of the widget, source also might get clip
          // fitHeight: To fill the height of the widget, source also might get clip
          // scaleDown: Align the source within the widget, if necessary it will
          //            scale down to ensure the source fits within the widget
          fit: BoxFit.scaleDown,
          child: Placeholder(),
        )
      ),
    );
  }
}
