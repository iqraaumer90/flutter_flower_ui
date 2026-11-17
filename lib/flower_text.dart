import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlowerText extends StatelessWidget {
  const FlowerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 90, vertical: 150),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 40,),
          Text(
            'A LITTLE REMINDER',
            style: TextStyle(
              fontSize: 14.sp,
              color: Color(0xFFB77985),
              letterSpacing: 3,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'Bloom Beautifully',
            style: TextStyle(
              fontSize: 27.sp,
              color: Color(0xFF754B56),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Let your dreams blossom',
            style: TextStyle(fontSize: 15.sp, color: Color(0xFFA47D85)),
          ),
        ],
      ),
    );
  }
}
