import 'package:clooth/const/style.dart';
import 'package:clooth/widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoritiesScreen extends StatelessWidget {
  const FavoritiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var statusBarHeight = MediaQuery.of(context).padding.top;
    var appBarHeight = kToolbarHeight;
    return Scaffold(
      drawerScrimColor: Colors.transparent,
      endDrawer: Container(
        padding: EdgeInsets.only(top: statusBarHeight + appBarHeight + 1),
        width: 220.w,
        child: MyDrawer(),
      ),
      appBar: AppBarScreen(
        title: Text(
          'Избранное',
          style: kAppBarstyle,
        ),
      ),
      body: Center(child: Text('Еще на разработке')),
    );
  }
}
