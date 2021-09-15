import 'package:clooth/widget/appbar.dart';
import 'package:clooth/widget/primarybutton.dart';
import 'package:clooth/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingInScreen extends StatelessWidget {
  const SingInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backwardsCompatibility: false,
        brightness: Brightness.dark,
        title: Text(
          'Вход',
          style: TextStyle(
              color: Colors.white,
              fontSize: 24.sp,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffC13445),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 25.sp,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 162.h,
            ),
            TextFields(
              text: 'Email',
              obscuretext: false,
            ),
            TextFields(
              text: 'Пароль',
              obscuretext: true,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12.h),
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Забыли пароль?',
                  style: TextStyle(
                      color: Color(0xffB8B8B8),
                      fontSize: 13.sp,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            SizedBox(
              height: 75.h,
            ),
            PrimaryButton(onPressed: () {}, text: 'Войти')
          ],
        )),
      ),
    );
  }
}
