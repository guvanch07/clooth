import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({this.icon, required this.text, this.icon1}) : super();

  final String text;
  final icon;
  final icon1;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        text,
        style: TextStyle(
            color: Color(0xff666E6D),
            fontSize: 24.sp,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.normal),
      ),
      centerTitle: true,
      actions: <Widget>[
        icon,
        icon1,
      ],
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Color(0xff666E6D),
          size: 27,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
