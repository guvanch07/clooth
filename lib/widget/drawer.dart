import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDrawer extends Drawer {
  MyDrawer({
    Key? key,
  }) : super(
            key: key,
            child: ListView(
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Личный кабинет',
                    style: TextStyle(fontSize: 18.sp),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Информация',
                    style: TextStyle(fontSize: 18.sp),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Контакты',
                    style: TextStyle(fontSize: 18.sp),
                  ),
                ),
              ],
            ));
}
