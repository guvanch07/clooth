import 'package:clooth/const/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FaviriteButton extends StatefulWidget {
  const FaviriteButton({Key? key}) : super(key: key);

  @override
  _FaviriteButtonState createState() => _FaviriteButtonState();
}

class _FaviriteButtonState extends State<FaviriteButton> {
  bool _isfavotite = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (_isfavotite) {
            _isfavotite = false;
          } else {
            _isfavotite = true;
          }
        });
      },
      child: Icon(
        Icons.favorite,
        color: _isfavotite ? Color(0xffE7E7E7) : kMainColor,
        size: 15,
      ),
    );
  }
}
