import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 24, right: 24),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 95,
          enlargeCenterPage: true,
          autoPlay: false,
          enableInfiniteScroll: false,
          viewportFraction: 1,
        ),
        items: [
          'assets/banner.png',
          'assets/banner.png'
        ].map((item){
          return Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFF3EBF3),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                    child: Image.asset(
                      'assets/banner.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(13, 20, 26, 20),
                    child: Text(
                      'Oh My Cashback is back! Stand a chance to win cash prize with our financing!',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }).toList(),
        // items: [
        //   Container(
        //     width: double.infinity,
        //     decoration: BoxDecoration(
        //       color: const Color(0xFFF3EBF3),
        //       borderRadius: BorderRadius.circular(12),
        //     ),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [
        //         Flexible(
        //           flex: 1,
        //           child: ClipRRect(
        //             borderRadius: const BorderRadius.only(
        //               topLeft: Radius.circular(12),
        //               bottomLeft: Radius.circular(12),
        //             ),
        //             child: Image.asset(
        //               'assets/banner.png',
        //               fit: BoxFit.cover,
        //             ),
        //           ),
        //         ),
        //         const Expanded(
        //           flex: 2,
        //           child: Padding(
        //             padding: EdgeInsets.fromLTRB(13, 24, 26, 24),
        //             child: Text(
        //               'Oh My Cashback is back! Stand a chance to win cash prize with our financing!',
        //               style: TextStyle(
        //                 color: Colors.black,
        //                 fontFamily: 'Poppins',
        //                 fontWeight: FontWeight.w600,
        //                 fontSize: 12,
        //               ),
        //             ),
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        //   Container(
        //     width: double.infinity,
        //     decoration: BoxDecoration(
        //       color: const Color(0xFFF3EBF3),
        //       borderRadius: BorderRadius.circular(12),
        //     ),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [
        //         Flexible(
        //           flex: 1,
        //           child: ClipRRect(
        //             borderRadius: const BorderRadius.only(
        //               topLeft: Radius.circular(12),
        //               bottomLeft: Radius.circular(12),
        //             ),
        //             child: Image.asset(
        //               'assets/banner.png',
        //               fit: BoxFit.cover,
        //             ),
        //           ),
        //         ),
        //         const Expanded(
        //           flex: 2,
        //           child: Padding(
        //             padding: EdgeInsets.fromLTRB(13, 24, 26, 24),
        //             child: Text(
        //               'Oh My Cashback is back! Stand a chance to win cash prize with our financing!',
        //               style: TextStyle(
        //                 color: Colors.black,
        //                 fontFamily: 'Poppins',
        //                 fontWeight: FontWeight.w600,
        //                 fontSize: 12,
        //               ),
        //             ),
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // ],
      )
        
        
        
        
        
        
        
        
        
        
      // child: Container(
      //   width: double.infinity,
      //   decoration: BoxDecoration(
      //     color: const Color(0xFFF3EBF3),
      //     borderRadius: BorderRadius.circular(12),
      //   ),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: [
      //       Flexible(
      //         flex: 1,
      //         child: ClipRRect(
      //           borderRadius: const BorderRadius.only(
      //             topLeft: Radius.circular(12),
      //             bottomLeft: Radius.circular(12),
      //           ),
      //           child: Image.asset(
      //             'assets/banner.png',
      //           ),
      //         ),
      //       ),
      //       const Expanded(
      //         flex: 2,
      //         child: Padding(
      //           padding: EdgeInsets.fromLTRB(13, 24, 26, 24),
      //           child: Text(
      //             'Oh My Cashback is back! Stand a chance to win cash prize with our financing!',
      //             style: TextStyle(
      //               color: Colors.black,
      //               fontFamily: 'Poppins',
      //               fontWeight: FontWeight.w600,
      //               fontSize: 12,
      //             ),
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
