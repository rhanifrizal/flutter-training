import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImportScreen extends StatelessWidget {
  const ImportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "Imports SVGs, Fonts, and Images";
    return Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("This is the default font",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    )),
                const Text("This is a font using Poppins",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    )),
                const SizedBox(height: 30),
                const Text("SVG Asset"),
                Expanded(
                  child: SvgPicture.asset(
                    'assets/svg/svg_tutorial.svg',
                    height: 200,
                    // colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
                    // semanticsLabel: 'A red up arrow'
                  ),
                ),
                const SizedBox(height: 30),
                const Text("SVG Network"),
                Expanded(
                  child: SvgPicture.network(
                    'https://www.svgrepo.com/show/477124/juicer-svg.svg',
                    height: 200,
                    // semanticsLabel: 'A shark?!',
                    placeholderBuilder: (BuildContext context) => Container(
                      padding: const EdgeInsets.all(30.0),
                      child: const CircularProgressIndicator(),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text("Image"),
                Image.asset(
                  'assets/application_background.jpeg',
                )
              ],
            ),
          ),
        ));
  }
}
