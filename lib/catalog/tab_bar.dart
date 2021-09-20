import 'package:clooth/catalog/sales.dart';
import 'package:clooth/const/style.dart';
import 'package:clooth/widget/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'brands.dart';
import 'disigns.dart';
import 'favorities.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
          activeColor: Color(0xffC13445),
          onTap: (index) {
            print('tapped $index');
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.whatshot,
                ),
                label: 'Бренды'),
            BottomNavigationBarItem(
                icon: Icon(Icons.design_services), label: 'Дизайнеры'),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_offer), label: 'Скидка'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: 'Избранное'),
          ]),
      tabBuilder: (context, int index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) => BrandsScreen(),
            );
          case 1:
            return CupertinoTabView(
              builder: (context) => DisignScreen(),
            );
          case 2:
            return CupertinoTabView(
              builder: (context) => SalesScreen(),
            );
          case 3:
          default:
            return CupertinoTabView(
              builder: (context) => FavoritiesScreen(),
            );
        }
      },
    );
  }
}
