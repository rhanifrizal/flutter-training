import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_training/features/exercise/screens/step3/cubit/step3_cubit.dart';
import 'package:flutter_training/features/exercise/widgets/steps_widget.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

class Step3Screen extends StatefulWidget {
  const Step3Screen({super.key});

  @override
  State<Step3Screen> createState() => _Step3ScreenState();
}

class _Step3ScreenState extends State<Step3Screen> {
  final TextEditingController dependantNumber = TextEditingController();
  final TextEditingController promoCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const String title = "Additional Details";
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(title),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 20, 40, 30),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: BlocProvider(
            create: (context) => Step3Cubit(),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      const StepsWidget(currentStep: 3),
                      descriptionSection(),
                      maritalSection(),
                      referredSection(),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                nextButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget appBar(String title) {
    final Orientation orientation = MediaQuery.orientationOf(context);
    final bool isLandscape = orientation == Orientation.landscape;
    return AppBar(
      primary: isLandscape ? false : true,
      backgroundColor: Colors.white,
      forceMaterialTransparency: true,
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Image.asset(
          'assets/back_button.png',
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontSize: 14,
          letterSpacing: 0.3,
          height: 22,
        ),
      ),
    );
  }

  Widget descriptionSection() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(0, 30, 0, 40),
      child: Text(
        'Tell us more about yourself',
        style: TextStyle(
          color: Color(0xFF404040),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          fontSize: 20,
          letterSpacing: 0.1,
        ),
      ),
    );
  }

  Widget maritalSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Marital Status',
          style: TextStyle(
            color: Color(0xFF404040),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 14,
            letterSpacing: 0.3,
          ),
        ),
        const SizedBox(height: 16),
        BlocBuilder<Step3Cubit, Step3State>(
          builder: (context, state) {
            final int currentMaritalStatus = state.maritalStatus;
            return Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () =>
                        context.read<Step3Cubit>().updateMaritalStatus(1),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: currentMaritalStatus == 1
                                ? const Color(0xFFBB52C2)
                                : null,
                            border: currentMaritalStatus != 1
                                ? Border.all(
                                    width: 2,
                                    color: const Color(0xFFDDDDDD),
                                  )
                                : null,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: currentMaritalStatus == 1
                              ? Image.asset('assets/white_right.png')
                              : null,
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          'Single',
                          style: TextStyle(
                            color: Color(0xFF101010),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: GestureDetector(
                    onTap: () =>
                        context.read<Step3Cubit>().updateMaritalStatus(2),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: currentMaritalStatus == 2
                                ? const Color(0xFFBB52C2)
                                : null,
                            border: currentMaritalStatus != 2
                                ? Border.all(
                                    width: 2,
                                    color: const Color(0xFFDDDDDD),
                                  )
                                : null,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: currentMaritalStatus == 2
                              ? Image.asset(
                                  'assets/white_right.png',
                                )
                              : null,
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          'Married',
                          style: TextStyle(
                            color: Color(0xFF101010),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ),
        const SizedBox(height: 40),
        BlocBuilder<Step3Cubit, Step3State>(
          builder: (context, state) {
            dependantNumber.text = state.dependantNumber;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'NO. OF DEPENDANTS',
                  style: TextStyle(
                    color: Color(0xFF8B8B8B),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: dependantNumber,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      isDense: true,
                      isCollapsed: false,
                      contentPadding: EdgeInsets.only(bottom: 12),
                      hintText: 'Please enter',
                      hintStyle: TextStyle(
                        color: Color(0xFFB5B5B5),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        letterSpacing: 0.3,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFDDDDDD),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xFFDDDDDD),
                      ))),
                  style: const TextStyle(
                    color: Color(0xFF404040),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    letterSpacing: 0.3,
                  ),
                  onChanged: (value) => context.read<Step3Cubit>().updateDependantNumber(value),
                ),
              ],
            );
          },
        ),
        const SizedBox(height: 24),
        BlocBuilder<Step3Cubit, Step3State>(
          builder: (context, state) {
            promoCode.text = state.promoCode;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'PROMO CODE (OPTIONAL)',
                  style: TextStyle(
                    color: Color(0xFF8B8B8B),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: promoCode,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      isDense: true,
                      isCollapsed: false,
                      contentPadding: EdgeInsets.only(bottom: 12),
                      hintText: 'Please enter',
                      hintStyle: TextStyle(
                        color: Color(0xFFB5B5B5),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        letterSpacing: 0.3,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFDDDDDD),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xFFDDDDDD),
                      ))),
                  style: const TextStyle(
                    color: Color(0xFF404040),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    letterSpacing: 0.3,
                  ),
                  onChanged: (value) => context.read<Step3Cubit>().updatePromoCode(value),
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget referredSection() {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: BlocBuilder<Step3Cubit, Step3State>(
        builder: (context, state) {
          final bool agentKT = state.agentKT;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => context.read<Step3Cubit>().updateAgentKT(!agentKT),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Expanded(
                      child: Text(
                        'Are you referred by any Koperasi Tentera agent?',
                        style: TextStyle(
                          color: Color(0xFF404040),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                    const SizedBox(width: 24),
                    AdvancedSwitch(
                      width: 90,
                      height: 40,
                      activeColor: const Color(0xFFBB52C2),
                      activeChild: const Text(
                        'YES',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          letterSpacing: 0.2,
                        ),
                      ),
                      inactiveColor: const Color(0xFFE4E7F0),
                      inactiveChild: const Text(
                        'NO',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF9296AE),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          letterSpacing: 0.2,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(100),
                      onChanged: (value) =>
                          context.read<Step3Cubit>().updateAgentKT(value),
                    ),
                  ],
                ),
              ),
              if (agentKT) ...[
                const SizedBox(height: 32),
                const Text(
                  'BRANCH',
                  style: TextStyle(
                    color: Color(0xFF8B8B8B),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    letterSpacing: 1,
                  ),
                ),
                DropdownButtonFormField(
                  value: 1,
                  icon: Image.asset(
                    'assets/down_button.png',
                  ),
                  elevation: 16,
                  isExpanded: true,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xFFDDDDDD),
                      width: 1,
                    )),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xFFDDDDDD),
                      width: 1,
                    )),
                  ),
                  style: const TextStyle(
                    color: Color(0xFF404040),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    letterSpacing: 0.3,
                  ),
                  onChanged: (int? value) {},
                  items: const [
                    DropdownMenuItem(
                      value: 1,
                      child: Text('Cawangan Utama Kuala Lumpur'),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const Text(
                  'AGENT NAME',
                  style: TextStyle(
                    color: Color(0xFF8B8B8B),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    letterSpacing: 1,
                  ),
                ),
                DropdownButtonFormField(
                  value: 1,
                  icon: Image.asset(
                    'assets/down_button.png',
                  ),
                  elevation: 16,
                  isExpanded: true,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xFFDDDDDD),
                      width: 1,
                    )),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xFFDDDDDD),
                      width: 1,
                    )),
                  ),
                  style: const TextStyle(
                    color: Color(0xFF404040),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    letterSpacing: 0.3,
                  ),
                  onChanged: (int? value) {},
                  items: const [
                    DropdownMenuItem(
                      value: 1,
                      child: Text('Azman Harun'),
                    ),
                  ],
                ),
              ],
            ],
          );
        },
      ),
    );
  }

  Widget nextButton() {
    return BlocBuilder<Step3Cubit, Step3State>(
      builder: (context, state) {
        bool isEnabled = false;
        if (state.maritalStatus != 0 && state.dependantNumber != '') {
          isEnabled = true;
        }
        return SizedBox(
          width: double.infinity,
          height: 56,
          child: ElevatedButton(
            onPressed: () {
              if(isEnabled) {
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
                splashFactory: isEnabled
                    ? InkSplash.splashFactory
                    : NoSplash.splashFactory,
                backgroundColor: isEnabled
                    ? const Color(0xFFBB52C2)
                    : const Color(0xFFE1DCE2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                )),
            child: const Text(
              'NEXT',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 14,
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
