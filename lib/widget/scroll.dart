import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductEntity {
  final String imageUri;
  final String name;
  final int day;
  final int minute;
  final VoidCallback? press;
  final Color? color;
  final Color? laoderColor;
  ProductEntity(
      {required this.imageUri,
      required this.name,
      required this.day,
      required this.minute,
      this.laoderColor,
      this.color,
      this.press});
}

class Cloothes extends StatelessWidget {
  static final products = [
    ProductEntity(
      imageUri: '1.png',
      name: 'Научиться жить без стресса',
      day: 5,
      minute: 1,
      press: () {},
    ),
    ProductEntity(
      imageUri: '2.png',
      name: 'Достигать цели с радостью',
      day: 1,
      minute: 1,
      press: () {},
    ),
    ProductEntity(
      imageUri: '3.png',
      name: 'Любить и принимать себя',
      day: 1,
      minute: 1,
      press: () {},
    ),
    ProductEntity(
      imageUri: '4.png',
      name: 'Поддерживать баланс ',
      day: 1,
      minute: 1,
      press: () {},
    ),
    ProductEntity(
        imageUri: '5.png',
        name: 'Жить в гармонии с окружающими',
        day: 1,
        minute: 1,
        press: () {}),
    ProductEntity(
        imageUri: '6.png',
        name: 'Повысить уровень счастья и энергия',
        day: 1,
        minute: 1,
        press: () {}),
    ProductEntity(
      imageUri: '1.png',
      name: 'Найти баланс между надо и хочу',
      day: 1,
      minute: 1,
      press: () {},
    ),
    ProductEntity(
      imageUri: '2.png',
      name: 'Вдохновиться своей работой',
      day: 1,
      minute: 1,
      press: () {},
    ),
    ProductEntity(
      imageUri: '3.png',
      name: 'Сформировать здоровые привычки питания',
      day: 1,
      minute: 1,
      press: () {},
    ),
    ProductEntity(
      imageUri: '4.png',
      name: 'Найти свою любовь',
      day: 1,
      minute: 1,
      press: () {},
    ),
  ];

  const Cloothes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //context.read<DataProduct>().fetchData;

    // final itemWidth = 50.w;
    // final itemHeight = 30.h;
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
                day: product.day,
                minute: product.minute,
                imageUri: product.imageUri,
                name: product.name,
                press: product.press,
              ),
            ),
          );
        });
  }
}

class CourseItem extends StatelessWidget {
  const CourseItem({
    Key? key,
    required this.imageUri,
    required this.name,
    required this.day,
    required this.minute,
    this.press,

    // this.map
  }) : super(key: key);
  final int day;
  final int minute;
  final String imageUri;
  final String name;
  final VoidCallback? press;

  //final Map<String,dynamic>map;

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
            padding: EdgeInsets.all(8),
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
                  width: 180,
                  height: 224,
                  child: Image.asset(
                    'assets/images/$imageUri',
                    fit: BoxFit.cover,
                  ),
                ),

                //Image.network('$(map['image'])'),

                Text(
                  '$day дней ~ $minute минут',
                  style: TextStyle(fontSize: 12.0, color: Color(0xFF9FABBF)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
