import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarScreen extends AppBar {
  AppBarScreen({Key? key, context, required Widget title})
      : super(
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xffC13445),
            key: key,
            title: title,
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
              ),
              onPressed: () {},
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              Builder(
                builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  icon: Icon(Icons.menu),
                ),
              ),
            ]);
}

class MyDrawer extends Drawer {
  MyDrawer({
    Key? key,
  }) : super(
            key: key,
            child: ListView(
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'Личный кабинет',
                      style: TextStyle(fontSize: 18.sp),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'Информация',
                      style: TextStyle(fontSize: 18.sp),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'Контакты',
                      style: TextStyle(fontSize: 18.sp),
                    ),
                  ),
                ),
              ],
            ));
}
