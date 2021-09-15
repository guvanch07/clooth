import 'package:clooth/widget/primarybutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'auth_view.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 193.h,
            ),
            Text(
              'Добро пожаловать!',
              style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Привет, дамы и господа!',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Меня зовут Стас Л. Я основатель этого приложения для удобных покупок во время карантина.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
            Image.asset('assets/girls.png'),
            SizedBox(
              height: 30.h,
            ),
            PrimaryButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AuthScreen()),
                );
              },
              text: 'Старт',
            )
          ],
        ),
      ),
    );
  }
}
