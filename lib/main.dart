import 'package:clooth/provider/comments.dart';
import 'package:clooth/scr/auth/auth_view.dart';
import 'package:clooth/scr/auth/start_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider(create: (_) => PostFunc())],
      child: ScreenUtilInit(
        builder: () => MaterialApp(
          home: WelcomeScreen(),
        ),
        designSize: const Size(414, 896),
      ),
    );
  }
}
