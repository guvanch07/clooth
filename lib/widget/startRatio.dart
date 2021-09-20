import 'package:clooth/const/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StartRatio extends StatefulWidget {
  const StartRatio({Key? key}) : super(key: key);

  @override
  _StartRatioState createState() => _StartRatioState();
}

class _StartRatioState extends State<StartRatio> {
  double value = 3.5;
  @override
  Widget build(BuildContext context) {
    return RatingStars(
      value: value,
      onValueChanged: (v) {
        //
        setState(() {
          value = v;
        });
      },
      starBuilder: (index, color) => Icon(
        Icons.star,
        color: color,
      ),
      starCount: 5,
      starSize: 20,
      valueLabelColor: const Color(0xff9b9b9b),
      valueLabelTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 12.0),
      valueLabelRadius: 10,
      maxValue: 5,
      starSpacing: 2,
      maxValueVisibility: true,
      valueLabelVisibility: false,
      animationDuration: Duration(milliseconds: 1000),
      valueLabelPadding: const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
      valueLabelMargin: const EdgeInsets.only(right: 8),
      starOffColor: const Color(0xffe7e8ea),
      starColor: kMainColor,
    );
    // RatingStars(
    //   value: value,
    //   onValueChanged: (v) {
    //     setState(
    //       () {
    //         value = v;
    //       },
    //     );
    //   },
    //   starBuilder: (index, color) => Icon(
    //     Icons.star,
    //     color: Color(0xffE5E5E5),
    //     //size: 20.sp,
    //   ),
    //   starColor: Colors.yellow,
    //   starCount: 5,
    //   starSize: 20,
    //   maxValue: 5,
    //   starSpacing: 2,
    //   maxValueVisibility: true,
    //   valueLabelVisibility: false,
    //   animationDuration: Duration(milliseconds: 1000),
    //   starOffColor: const Color(0xffE5E5E5),
    // );
  }
}

class StartRatings extends StatefulWidget {
  const StartRatings({Key? key}) : super(key: key);

  @override
  _StartRatingsState createState() => _StartRatingsState();
}

class _StartRatingsState extends State<StartRatings> {
  double _userRating = 3.0;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: _userRating,
      itemBuilder: (context, index) => Icon(
        Icons.star,
        color: Color(0xffC13445),
      ),
      itemCount: 5,
      itemSize: 13.0,
      unratedColor: Color(0xffC13445).withAlpha(50),
      direction: Axis.horizontal,
    );
  }
}
