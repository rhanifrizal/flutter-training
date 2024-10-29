import 'package:flutter/material.dart';

class GestureDetectorAndInkwellScreen extends StatelessWidget {
  const GestureDetectorAndInkwellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Gesture Detector and InkWell";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                debugPrint('OnTap');
              },
              onDoubleTap: (){
                debugPrint('OnDoubleTap');
              },
              onLongPress: (){
                debugPrint('OnLongPress');
              },
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    'Gesture Detector',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
                  onTap: () {
                    debugPrint('Press');
                  },
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  splashColor: Colors.red,
                  child: const Center(
                    child: Text(
                      'InkWell',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      )
    );
  }
}
