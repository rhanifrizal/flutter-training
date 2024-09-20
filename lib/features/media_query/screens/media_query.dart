import 'package:flutter/material.dart';

class KMediaQuery extends StatelessWidget {
  const KMediaQuery({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "MediaQuery Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.25,
              color: Colors.green,
            ),
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.5,
              height: MediaQuery.sizeOf(context).height * 0.25,
              color: Colors.red,
            )
          ],
        ),
      )
    );
  }
}
