import 'package:clooth/widget/appbar.dart';
import 'package:clooth/widget/primarybutton.dart';
import 'package:clooth/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backwardsCompatibility: false,
        brightness: Brightness.dark,
        title: Text(
          'Регистрация',
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
              height: 110.h,
            ),
            TextFields(
              text: 'Имя пользователя',
              obscuretext: false,
            ),
            TextFields(
              text: 'Email',
              obscuretext: false,
            ),
            TextFields(
              text: 'Пароль',
              obscuretext: true,
            ),
            TextFields(
              text: 'Повторите пароль',
              obscuretext: true,
            ),
            SizedBox(
              height: 75.h,
            ),
            PrimaryButton(onPressed: () {}, text: 'Зарегистрироваться')
          ],
        )),
      ),
    );
  }
}
