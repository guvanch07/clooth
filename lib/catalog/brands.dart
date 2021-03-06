import 'package:clooth/const/style.dart';
import 'package:clooth/widget/appbar.dart';
import 'package:clooth/widget/scroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrandsScreen extends StatelessWidget {
  const BrandsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var statusBarHeight = MediaQuery.of(context).padding.top;
    var appBarHeight = kToolbarHeight;
    return Scaffold(
      drawerScrimColor: Colors.transparent,
      endDrawer: Container(
          padding: EdgeInsets.only(top: statusBarHeight + appBarHeight + 1),
          width: 220.w,
          child: MyDrawer()),
      appBar: AppBarScreen(
        title: Text(
          'Избранное',
          style: kAppBarstyle,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.view_agenda_outlined,
                      color: Color(0xffAFAFAF),
                      size: 32,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.grid_view_outlined,
                      color: Color(0xffAFAFAF),
                      size: 32,
                    ),
                  ),
                  SizedBox(
                    width: 220.w,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: SvgPicture.asset('assets/filtr.svg'),
                  ),
                ],
              ),
              Container(height: 800, child: Cloothes()),
            ],
          ),
        ),
      ),
    );
  }
}
