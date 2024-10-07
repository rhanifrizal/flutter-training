import 'package:flutter/material.dart';

class BottomNavigatorWidget extends StatelessWidget {
  const BottomNavigatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF8F8FB),
        border: Border(
          top: BorderSide(
            color: Color(0xFFE8E8E8),
            width: 1,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 44,
              width: 66,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/bot_nav_home.png',
                  ),
                  const Text(
                    'Home',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                      color: Color(0xFFBB52C2),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 44,
              width: 66,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/bot_nav_profile.png',
                  ),
                  const Text(
                    'Profile',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Color(0xFFC2B7C9),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
