import 'package:flutter/material.dart';
import 'list_item_widget.dart';

class FoodsMenu extends StatefulWidget {
  // const FoodsMenu({Key? key}) : super(key: key);

  @override
  State<FoodsMenu> createState() => _FoodsMenuState();
}

class _FoodsMenuState extends State<FoodsMenu> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListItemWidget(
              img: Image.asset('assets/img4.png',
                  height: 90,
                  width: 90
              ),
              foodName: "Bolognese",
              calories: '667',
              gram: '660',
              protein: '35',
              carb: '84',
              fat: '22',
          ),
          SizedBox(
            width: double.infinity,
            height:1,
            child: Container(
              color: Color(0xff2C000000),
            ),
          ),
          ListItemWidget(
            img: Image.asset('assets/img5.png',
                height: 90,
                width: 90
            ),
            foodName: "Caesar Salad",
            calories: '481',
            gram: '305',
            protein: '10',
            carb: '23',
            fat: '40',
          ),
          SizedBox(
            width: double.infinity,
            height:1,
            child: Container(
              color: Color(0xff2C000000),
            ),
          ),
          ListItemWidget(
            img: Image.asset('assets/img6.png',
                height: 95,
                width: 95
            ),
            foodName: "Rice Chicken",
            calories: '517',
            gram: '0',
            protein: '10',
            carb: '85',
            fat: '15',
          ),
          SizedBox(
            width: double.infinity,
            height:1,
            child: Container(
              color: Color(0xff2C000000),
            ),
          ),
          ListItemWidget(
            img: Image.asset('assets/img7.png',
                height: 95,
                width: 95
            ),
            foodName: "Tacos",
            calories: '201',
            gram: '102',
            protein: '9',
            carb: '21',
            fat: '10',
          ),
          SizedBox(
            width: double.infinity,
            height:1,
            child: Container(
              color: Color(0xff2C000000),
            ),
          ),
          ListItemWidget(
            img: Image.asset('assets/img8.png',
                height: 99,
                width: 99
            ),
            foodName: "Lasagna",
            calories: '602',
            gram: '385',
            protein: '44',
            carb: '35',
            fat: '32',
          ),
          SizedBox(
            width: double.infinity,
            height:1,
            child: Container(
              color: Color(0xff2C000000),
            ),
          ),
          ListItemWidget(
            img: Image.asset('assets/img19.png',
                height: 90,
                width: 90
            ),
            foodName: "Hummus",
            calories: '100',
            gram: '60',
            protein: '5',
            carb: '9',
            fat: '6',
          ),
          SizedBox(
            width: double.infinity,
            height:1,
            child: Container(
              color: Color(0xff2C000000),
            ),
          ),
          ListItemWidget(
            img: Image.asset('assets/img20.png',
                height: 110,
                width: 110,
            ),
            foodName: "Salmon Steak",
            calories: '468',
            gram: '227',
            protein: '50',
            carb: '0',
            fat: '28',
          ),
          SizedBox(
            width: double.infinity,
            height:1,
            child: Container(
              color: Color(0xff2C000000),
            ),
          ),
          ListItemWidget(
            img: Image.asset('assets/img21.png',
              height: 90,
              width: 90,
            ),
            foodName: "Steak",
            calories: '614',
            gram: '221',
            protein: '58',
            carb: '0',
            fat: '41',
          ),
          SizedBox(
            width: double.infinity,
            height:1,
            child: Container(
              color: Color(0xff2C000000),
            ),
          ),
          ListItemWidget(
            img: Image.asset('assets/img22.png',
              height: 95,
              width: 95,
            ),
            foodName: "Fish & Chips",
            calories: '688',
            gram: '513',
            protein: '43',
            carb: '71',
            fat: '26',
          ),
        ],
      ),
    );
  }
}
