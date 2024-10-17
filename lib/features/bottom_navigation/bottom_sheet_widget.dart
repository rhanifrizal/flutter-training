import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({super.key});

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _showPersistentBottomSheet() {
    _scaffoldKey.currentState!.showBottomSheet(
      (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.amber,
          child: const Center(
            child: Text('This is a bottom sheet'),
          )
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    const title = "Bottom Sheet";
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: _showPersistentBottomSheet,
            child: const Text('Show Bottom Sheet'),
          ),
        ),
      ),
    );
  }
}
