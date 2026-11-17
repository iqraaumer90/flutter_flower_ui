import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlowerBottomText extends StatelessWidget {
  const FlowerBottomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Keep Growing, Keep Blooming',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFF754B56),
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Every flower blooms in its own time.',
            style: TextStyle(fontSize: 12.sp, color: Color(0xFFA47D85)),
          ),
          SizedBox(height: 18.h),
          Text(
            'DESIGNED WITH FLUTTER',
            style: TextStyle(
              fontSize: 10.sp,
              letterSpacing: 2,
              color: Color(0xFFB77985),
            ),
          ),
        ],
      ),
    );
  }
}
