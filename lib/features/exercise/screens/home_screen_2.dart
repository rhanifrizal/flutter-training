import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_training/features/exercise/widgets/banner_widget.dart';
import 'package:flutter_training/features/exercise/widgets/bottom_navigator_widget.dart';
import 'package:flutter_training/features/exercise/widgets/home_app_bar_widget.dart';
import 'package:intl/intl.dart' as intl;

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.fromLTRB(0, 70, 0, 30),
        children: [
          const HomeAppBarWidget(),
          financeCardSection(),
          const BannerWidget(),
        ],
      ),
      bottomNavigationBar: const BottomNavigatorWidget(),
    );
  }

  Widget financeCardSection() {
    return Padding(
      padding: const EdgeInsets.only(top: 37, left: 24, right: 24),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          border: Border.all(
            width: 1,
            color: const Color(0xFFF5F5F5),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 8,
              spreadRadius: 0,
              color: const Color(0xFF5A3A42).withOpacity(0.08),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xFF6E2C7D),
                    Color(0xFFF88907),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 4),
                    blurRadius: 8,
                    spreadRadius: 0,
                    color: const Color(0xFF5A3A42).withOpacity(0.08),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          flex: 2,
                          child: Text(
                            // 'Personal Financing',
                            'Personal Financing It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              letterSpacing: 0.3,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              // Use available width from the layout constraints
                              double availableWidth = constraints.maxWidth;

                              // Call the truncation function with the available width
                              //'# 355012',
                              //'# 355012234567890123456789012345678901234567890123',
                              String truncatedString = getTruncatedString(
                                '355012234567890123456789012345678901234567890123',
                                availableWidth,
                                const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  letterSpacing: 0.1,
                                  color: Colors.white,
                                ),
                              );

                              return Text(
                                truncatedString,
                                textAlign: TextAlign.end,
                                style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  letterSpacing: 0.1,
                                  color: Colors.white,
                                ),
                              );
                            }
                          ),
                        ),
                        // Expanded(
                        //   child: Text(
                        //     // '# 355012',
                        //     '# 355012234567890123456789012345678901234567890123',
                        //     textAlign: TextAlign.end,
                        //     style: TextStyle(
                        //       fontFamily: 'Poppins',
                        //       fontWeight: FontWeight.w400,
                        //       fontSize: 12,
                        //       letterSpacing: 0.1,
                        //       color: Colors.white,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    LinearProgressIndicator(
                      borderRadius: BorderRadius.circular(6),
                      backgroundColor: Colors.white.withOpacity(0.20),
                      color: const Color(0xFFF3EBF5),
                      value: 0.35,
                      minHeight: 6,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Remaining to be paid',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  letterSpacing: 0.1,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 4),
                              FittedBox(
                                child: Text(
                                  // 'RM 8,980.00',
                                  // 'RM 1,000,000,000.00',
                                  'RM ${formatAmount(1000000000)}',
                                  style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    letterSpacing: 0.3,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Next payment',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  letterSpacing: 0.1,
                                  color: Colors.white,
                                ),
                              ),
                              FittedBox(
                                child: Text(
                                  // '3 Oct',
                                  '3 October, 2024',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    letterSpacing: 0.3,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Repaid Amount',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  letterSpacing: 0.1,
                                  color: Color(0xFF5E5E5E),
                                ),
                              ),
                              const SizedBox(height: 4),
                              FittedBox(
                                child: Text(
                                  // 'RM 5,300.80',
                                  // 'RM 5,300,000,000.80',
                                  'RM ${formatAmount(5300000000.80)}',
                                  style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    letterSpacing: 0.3,
                                    color: Color(0xFF101010),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Monthly Deductions',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  letterSpacing: 0.1,
                                  color: Color(0xFF5E5E5E),
                                ),
                              ),
                              const SizedBox(height: 4),
                              FittedBox(
                                child: Text(
                                  // 'RM 230.00',
                                  // 'RM 2,300,000,000.00',
                                  'RM ${formatAmount(2300000000.00)}',
                                  style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    letterSpacing: 0.3,
                                    color: Color(0xFF101010),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Total Loan Amount',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  letterSpacing: 0.1,
                                  color: Color(0xFF5E5E5E),
                                ),
                              ),
                              const SizedBox(height: 4),
                              FittedBox(
                                child: Text(
                                  // 'RM 12,800.30',
                                  // 'RM 1,200,300,000.80',
                                  'RM ${formatAmount(1200300000.80)}',
                                  style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    letterSpacing: 0.3,
                                    color: Color(0xFF101010),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Profit Rate',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  letterSpacing: 0.1,
                                  color: Color(0xFF5E5E5E),
                                ),
                              ),
                              const SizedBox(height: 4),
                              FittedBox(
                                child: Text(
                                  // '3.88%',
                                  // '99.880000000000000%',
                                  '${formatAmount(99.881234567800000)}%',
                                  style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    letterSpacing: 0.3,
                                    color: Color(0xFF101010),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Number of Payments',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              letterSpacing: 0.1,
                              color: Color(0xFF5E5E5E),
                            ),
                          ),
                          const SizedBox(height: 4),
                          RichText(
                            text: TextSpan(
                              // text: '22 ',
                              // text: '22,000 ',
                              text: '${formatAmount(22000)} ',
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                letterSpacing: 0.3,
                                color: Color(0xFF101010),
                              ),
                              children: [
                                TextSpan(
                                  // text: '/ 60 months',
                                  // text: '/ 60,000 months',
                                  text: '/ ${formatAmount(60000)} months',
                                  style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    letterSpacing: 0.1,
                                    color: Color(0xFF5E5E5E),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String formatAmount(double amount) {
    if (amount >= pow(10, 9)) {
      // Format the amount using scientific notation
      final formatter = intl.NumberFormat('0.#E+0', 'en_US');
      return formatter.format(amount).replaceAll('E', 'e').replaceAll('+', '');
    } else {
      // Format the amount using the decimal pattern
      final formatter = intl.NumberFormat.decimalPattern();
      return formatter.format(amount);
    }
  }

  String getTruncatedString(String text, double maxWidth, TextStyle textStyle) {
    // Helper function to measure the width of a given string
    double measureTextWidth(String textToMeasure) {
      final TextPainter textPainter = TextPainter(
        textDirection: TextDirection.ltr,
        text: TextSpan(text: textToMeasure, style: textStyle),
      );
      textPainter.layout(minWidth: 0, maxWidth: double.infinity);
      return textPainter.size.width;
    }

    // Define the prefix
    const String prefix = '# ';
    // Add the prefix to the original text
    String fullText = '$prefix$text';

    // Measure the full text width with the prefix
    double fullTextWidth = measureTextWidth(fullText);

    // If the full text fits, return it
    if (fullTextWidth <= maxWidth) {
      return fullText;
    }

    String ellipsis = '...';
    // Split the text into two halves
    int middleIndex = text.length ~/ 2;
    String firstHalf = text.substring(0, middleIndex);
    String secondHalf = text.substring(middleIndex);

    // Alternating removal
    bool removeFromFirstHalf = true; // Start with first half

    while (true) {
      // Create the combined string with ellipsis
      String combinedText = '$prefix$firstHalf$ellipsis$secondHalf';
      // Check if it fits
      if (measureTextWidth(combinedText) <= maxWidth) {
        return combinedText; // Return if it fits
      }

      // Alternate character removal
      if (removeFromFirstHalf && firstHalf.isNotEmpty) {
        firstHalf = firstHalf.substring(0, firstHalf.length - 1); // Remove from the end
      } else if (secondHalf.isNotEmpty) {
        secondHalf = secondHalf.substring(1); // Remove from the start
      }

      // Toggle the removal flag
      removeFromFirstHalf = !removeFromFirstHalf;

      // Break if both halves are empty or only the ellipsis remains
      if (firstHalf.isEmpty && secondHalf.isEmpty) {
        return '$prefix$ellipsis'; // Return only the ellipsis
      }
    }
  }



}
