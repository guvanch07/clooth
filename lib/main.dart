import 'package:clooth/scr/auth/auth_view.dart';
import 'package:clooth/scr/auth/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        home: WelcomeScreen(),
      ),
      designSize: const Size(414, 896),
    );
  }
}
