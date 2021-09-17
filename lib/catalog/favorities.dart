import 'package:clooth/const/style.dart';
import 'package:clooth/widget/appbar.dart';
import 'package:flutter/material.dart';

class FavoritiesScreen extends StatelessWidget {
  const FavoritiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
