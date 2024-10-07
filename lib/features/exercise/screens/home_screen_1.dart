import 'package:flutter/material.dart';
import 'package:flutter_training/features/exercise/widgets/banner_widget.dart';
import 'package:flutter_training/features/exercise/widgets/bottom_navigator_widget.dart';
import 'package:flutter_training/features/exercise/widgets/home_app_bar_widget.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.fromLTRB(0, 70, 0, 30),
        children: [
          const HomeAppBarWidget(),
          applicationSection(),
          const BannerWidget(),
        ],
      ),
      bottomNavigationBar: const BottomNavigatorWidget(),
    );
  }

  Widget applicationSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'ONGOING APPLICATION',
            style: TextStyle(
              color: Color(0xFF404040),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 14,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            // width: 327,
            // height: 168,
            width: double.infinity,
            padding: const EdgeInsets.only(bottom: 60),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.8),
                  BlendMode.srcATop,
                ),
                image: const AssetImage(
                  'assets/application_background.jpeg',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 93,
                    height: 17,
                    padding: const EdgeInsets.fromLTRB(8, 1, 8, 1),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE8A43E),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Text(
                      'RESUBMISSION',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Personal Finance Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      letterSpacing: 0.3,
                    ),
                  ),
                  const Text(
                    'There was a problem with your submission. '
                    'Please try submitting it again to continue.'
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      letterSpacing: 0.1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            // width: 327,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFFF5F5F5),
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    spreadRadius: 0,
                    offset: const Offset(0, 4),
                    color: const Color(0xFF5A3A42).withOpacity(0.08),
                  ),
                ]),
            child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Application ID',
                          style: TextStyle(
                            color: Color(0xFF8B8B8B),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            letterSpacing: 0.1,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              // '890403244322000',
                              '89040324432200012345678901234567890123456789012345678901234567890123456789012345678901234456789012345',
                              style: TextStyle(
                                color: Color(0xFF5E5E5E),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                letterSpacing: 0.2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Date Applied',
                          style: TextStyle(
                            color: Color(0xFF8B8B8B),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            letterSpacing: 0.1,
                          ),
                        ),
                        Text(
                          '20 Feb 2023',
                          style: TextStyle(
                            color: Color(0xFF5E5E5E),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            letterSpacing: 0.2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Divider(
                      thickness: 1,
                      height: 0,
                      color: Color(0xFFF5F5F5),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: double.infinity,
                      height: 48,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 8,
                          spreadRadius: 0,
                          color: const Color(0xFF5A3A42).withOpacity(0.24),
                        ),
                      ]),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFBB52C2),
                        ),
                        child: const Text(
                          'CONTINUE APPLICATION',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
