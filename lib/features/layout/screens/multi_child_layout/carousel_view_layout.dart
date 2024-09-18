import 'package:flutter/material.dart';

class CarouselViewLayout extends StatefulWidget {
  const CarouselViewLayout({super.key});
  @override
  State<CarouselViewLayout> createState() => _CarouselViewLayoutState();
}

class _CarouselViewLayoutState extends State<CarouselViewLayout> {
  final CarouselController controller = CarouselController(initialItem: 1);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const String title = "CarouselView Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 200),
        child: CarouselView(
          // extent the children are forced to have in the main axis.
          itemExtent: 320,
          // minimum allowable extent (size) in the main axis for carousel
          // items during scrolling transitions.
          shrinkExtent: 200,
          children: List<Widget>.generate(20, (int index) {
            return Container(
              color: Colors.blue,
            );
          }),
        ),
      ),
    );
  }
}
