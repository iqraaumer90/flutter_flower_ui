import 'package:flutter/material.dart';
import 'package:flutter_cat_clipper/flower_botttom_text.dart';
import 'package:flutter_cat_clipper/flower_painter.dart';
import 'package:flutter_cat_clipper/flower_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 852),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 900.h,
          width: 500.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            image: DecorationImage(
              image: AssetImage('assets/image copy.png'),
              fit: BoxFit.cover,
            ),
          ),

          child: Stack(
            children: [
              FlowerText(),

              Center(
                child: SizedBox(
                  height: 320.h,
                  width: 230.w,
                  child: CustomPaint(painter: FlowerPainter()),
                ),
              ),

              // BOTTOM TEXT
              Positioned(
                bottom: 100.h,
                left: 0,
                right: 0,
                child: const FlowerBottomText(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
