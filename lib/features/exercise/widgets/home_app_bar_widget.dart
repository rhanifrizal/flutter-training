import 'package:flutter/material.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: Text(
              'Hello, Raja Muhammad Hanif Bin Raja Rizal Iskandar',
              // 'Hello, Mariam',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 24,
                letterSpacing: 0.3,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset(
              'assets/notification.png',
            ),
          ),
        ],
      ),
    );
  }
}
