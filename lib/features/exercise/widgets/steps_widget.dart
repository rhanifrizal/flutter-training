import 'package:flutter/material.dart';

class StepsWidget extends StatelessWidget {
  const StepsWidget({required this.currentStep, super.key});

  final int currentStep;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "STEP $currentStep OF 8",
              style: const TextStyle(
                color: Color(0xFF5E5E5E),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 10,
                letterSpacing: 1,
                // height: 12,
              ),
            ),
            const Text(
              "AUTO SAVE",
              style: TextStyle(
                color: Color(0xFF2AC066),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 10,
                letterSpacing: 1,
                // height: 12,
              ),
            ),
          ],
        ),
        const SizedBox(height: 14),
        Row(
          children: List.generate(
            8,
            (index) => [
              Expanded(
                child: Container(
                  height: 4,
                  color: index < currentStep
                      ? const Color(0xFF2DD881)
                      : const Color(0xFFDDDDDD),
                ),
              ),
              const SizedBox(width: 2), // Adjust the width as needed
            ],
          ).expand((item) => item).toList(),
        ),
      ],
    );
  }
}
