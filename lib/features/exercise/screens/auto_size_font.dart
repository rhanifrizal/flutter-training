import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AutoSizeFont extends StatelessWidget {
  const AutoSizeFont({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder:
      (context, orientation, screenType) {
        return Scaffold(
          backgroundColor: const Color(0xFFF5F8FF),
          appBar: appBar(context),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 36),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      Text(
                        'Please go through the following steps to complete the verification journey.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          letterSpacing: 0.3,
                        ),
                      ),
                      const SizedBox(height: 25),
                      ListTile(
                        tileColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        titleAlignment: ListTileTitleAlignment.center,
                        contentPadding: const EdgeInsets.fromLTRB(16, 12, 10, 12),
                        leading: Image.asset('assets/banner.png'),
                        title: Text(
                          'ID Document',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 17.sp,
                            letterSpacing: 0.3,
                          ),
                        ),
                        subtitle: Text(
                          'Not Submitted',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 17.sp,
                            letterSpacing: 0.3,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.chevron_right_rounded,
                          size: 40,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 18),
                      ListTile(
                        tileColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        titleAlignment: ListTileTitleAlignment.center,
                        contentPadding: const EdgeInsets.fromLTRB(16, 12, 10, 12),
                        leading: Image.asset('assets/banner.png'),
                        title: Text(
                          'Selfie',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 17.sp,
                            letterSpacing: 0.3,
                          ),
                        ),
                        subtitle: Text(
                          'Not Submitted',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 17.sp,
                            letterSpacing: 0.3,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.chevron_right_rounded,
                          size: 40,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        // splashFactory: isChecked ? InkSplash.splashFactory : NoSplash.splashFactory,
                        // backgroundColor: isChecked ? const Color(0xFFBB52C2) : Colors.grey,
                        // backgroundColor: const Color(0xFFBB52C2),
                        backgroundColor: const Color(0xFFE7CFEF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )
                    ),
                    child: Text(
                      'Done',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 17.sp,
                        letterSpacing: 1,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          )
        );
      },
    );
  }

  PreferredSizeWidget appBar(context) {
    return AppBar(
      forceMaterialTransparency: true,
      automaticallyImplyLeading: false,
      leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.close_rounded)
      ),
      title: Text(
        'Verification Progress',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
          letterSpacing: 0.3,
        ),
      ),
    );
  }
}
