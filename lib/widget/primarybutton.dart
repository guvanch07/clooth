import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {required this.onPressed, required this.text, this.width});

  final VoidCallback onPressed;
  final String text;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 42.h,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      minWidth: width ?? 286,
      color: Color(0xffC13445),
      textColor: Colors.white,
      child: Text(
        text,
        style: TextStyle(fontSize: 18.sp),
      ),
    );
  }
}
