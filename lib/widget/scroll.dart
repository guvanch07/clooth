import 'package:clooth/widget/startRatio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'expendble.dart';
import 'favorite_icon.dart';

class ProductEntity {
  final String imageUri;
  final String name;

  final VoidCallback? press;

  final String price;
  final String colour;
  final String where;
  ProductEntity(
      {required this.imageUri,
      required this.name,
      required this.price,
      required this.colour,
      required this.where,
      this.press});
}

class Cloothes extends StatelessWidget {
  static final products = [
    ProductEntity(
      colour: 'ЖЕЛТЫЙ',
      where: 'H&M',
      price: '180 руб.',
      imageUri: '1.png',
      name: 'Научиться жить без стресса',
      press: () {},
    ),
    ProductEntity(
      colour: 'ЖЕЛТЫЙ',
      where: 'H&M',
      price: '180 руб.',
      imageUri: '2.png',
      name: 'Достигать цели с радостью',
      press: () {},
    ),
    ProductEntity(
      colour: 'ЖЕЛТЫЙ',
      where: 'H&M',
      price: '180 руб.',
      imageUri: '3.png',
      name: 'Любить и принимать себя',
      press: () {},
    ),
    ProductEntity(
      colour: 'ЖЕЛТЫЙ',
      where: 'H&M',
      price: '180 руб.',
      imageUri: '4.png',
      name: 'Поддерживать баланс ',
      press: () {},
    ),
    ProductEntity(
        colour: 'ЖЕЛТЫЙ',
        where: 'H&M',
        price: '180 руб.',
        imageUri: '5.png',
        name: 'Жить в гармонии с окружающими',
        press: () {}),
    ProductEntity(
        colour: 'ЖЕЛТЫЙ',
        where: 'H&M',
        price: '180 руб.',
        imageUri: '6.png',
        name: 'Повысить уровень счастья и энергия',
        press: () {}),
    ProductEntity(
      colour: 'ЖЕЛТЫЙ',
      where: 'H&M',
      price: '180 руб.',
      imageUri: '1.png',
      name: 'Найти баланс между надо и хочу',
      press: () {},
    ),
    ProductEntity(
      colour: 'ЖЕЛТЫЙ',
      where: 'H&M',
      price: '180 руб.',
      imageUri: '2.png',
      name: 'Вдохновиться своей работой',
      press: () {},
    ),
    ProductEntity(
      colour: 'ЖЕЛТЫЙ',
      where: 'H&M',
      price: '180 руб.',
      imageUri: '3.png',
      name: 'Сформировать здоровые привычки питания',
      press: () {},
    ),
    ProductEntity(
      colour: 'ЖЕЛТЫЙ',
      where: 'H&M',
      price: '180 руб.',
      imageUri: '4.png',
      name: 'Найти свою любовь',
      press: () {},
    ),
  ];

  const Cloothes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 4.w,
        childAspectRatio: 184.w / 281.h,
      ),
      itemBuilder: (BuildContext context, int index) {
        final product = products[index];
        return Padding(
          padding: index % 2 == 0
              ? EdgeInsets.only(left: 6.w, right: 3.w)
              : EdgeInsets.only(right: 6.w, left: 3.w),
          child: GestureDetector(
            onTap: () {},
            child: CourseItem(
              imageUri: product.imageUri,
              name: product.name,
              press: product.press,
              price: product.price,
              color: product.colour,
              where: product.where,
            ),
          ),
        );
      },
    );
  }
}

class CourseItem extends StatelessWidget {
  CourseItem(
      {Key? key,
      required this.imageUri,
      required this.name,
      this.press,
      required this.price,
      required this.color,
      required this.where

      // this.map
      })
      : super(key: key);

  final String imageUri;
  final String name;
  final VoidCallback? press;
  final String price;
  final String color;
  final String where;

  //final Map<String,dynamic>map;
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Neumorphic(
          style: NeumorphicStyle(
              depth: 2.0,
              lightSource: LightSource.top,
              boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(10.0))),
          child: Container(
            padding: EdgeInsets.all(6),
            width: 184.w,
            height: 281.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(9.0),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 5.h),
                  width: 180.w,
                  height: 224.h,
                  child: Image.asset(
                    'assets/images/$imageUri',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      price,
                      style: TextStyle(fontSize: 10.sp),
                    ),
                    StartRatings(),
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: [
                          Text(
                            color,
                            style: TextStyle(fontSize: 12.sp),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            where,
                            style: TextStyle(fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () => showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) => buildSheet(context)),
                            child: Icon(
                              CupertinoIcons.conversation_bubble,
                              color: Colors.black,
                              size: 14,
                            ),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          FaviriteButton(),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSheet(context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * 0.70,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                width: 111.w,
                height: 4.h,
                color: Color(0xff9D9D9D),
              ),
              Container(
                height: 500.h,
                child: CommitsList(),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 8.h),
                  alignment: Alignment.centerLeft,
                  child: StartRatio()),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
                  suffixIcon: IconButton(
                      onPressed: () {
                        getdata(_controller.text);
                        _controller.clear();
                      },
                      icon: SvgPicture.asset('assets/send.svg')),
                  hintText: 'Написать отзыв',
                  fillColor: Color(0xffE5E5E5),
                  filled: true,
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> getdata(notevalue) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('noteData', notevalue);
  }
}

class CommitsList extends StatefulWidget {
  const CommitsList({Key? key}) : super(key: key);

  @override
  _CommitsListState createState() => _CommitsListState();
}

class _CommitsListState extends State<CommitsList> {
  String? noteValue;
  @override
  void initState() {
    super.initState();
    getNotes();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
          child: Row(
            children: <Widget>[
              Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Icon(Icons.account_circle_rounded),
              ),
              SizedBox(
                width: 5.w,
              ),
              noteValue == null ? Text('нет комментарии') : Text(noteValue!),
            ],
          ),
        );
      },
    );
  }

  void getNotes() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    noteValue = preferences.getString('noteData');
    setState(() {});
  }
}
