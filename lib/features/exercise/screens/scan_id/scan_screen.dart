import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_training/features/exercise/screens/scan_id/cubit/checkbox_cubit.dart';
import 'package:flutter_training/features/exercise/widgets/steps_widget.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Scan ID";
    return Scaffold(
      appBar: appBar(title),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 36),
        child: BlocProvider(
          create: (context) => CheckboxCubit(),
          child: ListView(
            children: [
              const StepsWidget(currentStep: 1),
              descriptionSection(),
              iconsSection(),
              tncSection(),
              buttonSection(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget appBar(String title) {
    return AppBar(
      // leading: Icon(Icons.arrow_back_ios),
      // leadingWidth: 0,
      // leading: Align(
      //   alignment: Alignment.centerLeft,
      //   child: IconButton(
      //     onPressed: () {},
      //     icon: Icon(Icons.arrow_back_ios),
      //   ),
      // ),
      // automaticallyImplyLeading: false,
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontSize: 16,
          letterSpacing: 0.3,
          height: 22,
        ),
      ),
    );
  }

  Widget descriptionSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              'assets/id.png',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 25),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Before we begin, verify yourself by scanning your identification card.',
              style: TextStyle(
                color: Color(0xFF404040),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 22,
                letterSpacing: 0.1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget iconsSection() {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: const Color(0xFFF3EBF5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                'assets/sunny.png',
              )
            ),
            const SizedBox(width: 20),
            const Expanded(
              child: Text(
                "Make sure you're in a bright place",
                style: TextStyle(
                  color: Color(0xFF404040),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  letterSpacing: 0.1,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),
        Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: const Color(0xFFF3EBF5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                'assets/user.png',
              )
            ),
            const SizedBox(width: 20),
            const Expanded(
              child: Text(
                "Place your ID within the frame",
                style: TextStyle(
                  color: Color(0xFF404040),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  letterSpacing: 0.1,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),
        Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: const Color(0xFFF3EBF5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                'assets/right.png',
              ),
            ),
            const SizedBox(width: 20),
            const Expanded(
              child: Text(
                "Once fit, it will scan automatically",
                style: TextStyle(
                  color: Color(0xFF404040),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  letterSpacing: 0.1,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget tncSection() {
    return BlocBuilder<CheckboxCubit, bool>(
      builder: (context, isChecked) {
        return GestureDetector(
          onTap: () => context.read<CheckboxCubit>().toggle(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 52),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: isChecked ? const Color(0xFFBB52C2) : null,
                    border: !isChecked ? Border.all(
                      width: 2,
                      color: const Color(0xFFDDDDDD),
                    ) : null,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: isChecked ? Image.asset(
                    'assets/white_right.png',
                  ) : null,
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        letterSpacing: 0.1,
                        color: Color(0xFF5E5E5E),
                      ),
                      children: [
                        const TextSpan(text: 'I accept terms and offers including the '),
                        TextSpan(
                          text: 'Charges & Fees',
                          style: const TextStyle(fontWeight: FontWeight.w600, letterSpacing: 0.2, color: Color(0xFFBB52C2)),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            showDialog(
                              context: context,
                              builder: (context) => const AlertDialog(
                                title: Text('Charges & Fees'),
                                content: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.")
                              ),
                            );
                          }
                        ),
                      ]
                    )
                  ),
                ),
              ],
            )
          ),
        );
      }
    );
  }

  Widget buttonSection() {
    return BlocBuilder<CheckboxCubit, bool>(
      builder: (context, isChecked) {
        return SizedBox(
          width: double.infinity,
          height: 56,
          child: ElevatedButton(
            onPressed: () {
              if(isChecked) {
                showDialog(
                  context: context,
                  builder: (context) => const AlertDialog(
                    title: Text('NEXT'),
                    content: Text("Proceed to the next step")
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              splashFactory: isChecked ? InkSplash.splashFactory : NoSplash.splashFactory,
              backgroundColor: isChecked ? const Color(0xFFBB52C2) : Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )
            ),
            child: const Text(
              'NEXT',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 16,
                letterSpacing: 1,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
