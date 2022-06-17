import 'package:flutter/material.dart';
import 'list_item_widget.dart';

class DrinksMenu extends StatefulWidget {
  // const DrinksMenu({Key? key}) : super(key: key);

  @override
  State<DrinksMenu> createState() => _DrinksMenuState();
}

class _DrinksMenuState extends State<DrinksMenu> {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListItemWidget(
            img: Image.asset('assets/img9.png',
                height: 70,
                width: 90
            ),
            foodName: "Milk",
            calories: '122',
            gram: '244',
            protein: '8',
            carb: '12',
            fat: '5',
          ),
          SizedBox(
            width: double.infinity,
            height:1,
            child: Container(
              color: Color(0xff2C000000),
            ),
          ),
          ListItemWidget(
            img: Image.asset('assets/img10.png',
                height: 75,
                width: 75
            ),
            drink: "drink",
            foodName: "Hot Chocolate",
            calories: '192',
            gram: '240',
            protein: '9',
            carb: '26',
            fat: '5',
          ),
          SizedBox(
            width: double.infinity,
            height:1,
            child: Container(
              color: Color(0xff2C000000),
            ),
          ),
          ListItemWidget(
            img: Image.asset('assets/img11.png',
                height: 85,
                width: 85
            ),
            drink: "drink",
            foodName: "Banana Smoothie",
            calories: '176',
            gram: '203',
            protein: '5',
            carb: '37',
            fat: '2',
          ),
          SizedBox(
            width: double.infinity,
            height:1,
            child: Container(
              color: Color(0xff2C000000),
            ),
          ),
          ListItemWidget(
            img: Image.asset('assets/img12.png',
                height: 92,
                width: 92
            ),
            drink: "drink",
            foodName: "Boba Tea",
            calories: '120',
            gram: '237',
            protein: '0',
            carb: '28',
            fat: '2',
          ),
          SizedBox(
            width: double.infinity,
            height:1,
            child: Container(
              color: Color(0xff2C000000),
            ),
          ),
          ListItemWidget(
            img: Image.asset('assets/img13.png',
                height: 85,
                width: 85
            ),
            drink: "drink",
            foodName: "Matcha Latte",
            calories: '110',
            gram: '237',
            protein: '6',
            carb: '14',
            fat: '4',
          ),
          SizedBox(
            width: double.infinity,
            height:1,
            child: Container(
              color: Color(0xff2C000000),
            ),
          ),
          ListItemWidget(
            img: Image.asset('assets/img23.png',
                height: 85,
                width: 85
            ),
            drink: "drink",
            foodName: "Strawberry Smooty",
            calories: '182',
            gram: '202',
            protein: '6',
            carb: '34',
            fat: '2',
          ),
          SizedBox(
            width: double.infinity,
            height:1,
            child: Container(
              color: Color(0xff2C000000),
            ),
          ),
          ListItemWidget(
            img: Image.asset('assets/img24.png',
                height: 85,
                width: 85
            ),
            drink: "drink",
            foodName: "Mojito",
            calories: '205',
            gram: '222',
            protein: '0.3',
            carb: '29',
            fat: '0.1',
          ),
          SizedBox(
            width: double.infinity,
            height:1,
            child: Container(
              color: Color(0xff2C000000),
            ),
          ),
          ListItemWidget(
            img: Image.asset('assets/img25.png',
                height: 85,
                width: 85
            ),
            drink: "drink",
            foodName: "Tequila Gold",
            calories: '97',
            gram: '42',
            protein: '0',
            carb: '0',
            fat: '0',
          ),
          SizedBox(
            width: double.infinity,
            height:1,
            child: Container(
              color: Color(0xff2C000000),
            ),
          ),
          ListItemWidget(
            img: Image.asset('assets/img26.png',
                height: 83,
                width: 83
            ),
            drink: "drink",
            foodName: "Orange Juice",
            calories: '112',
            gram: '248',
            protein: '1.7',
            carb: '26',
            fat: '0.5',
          ),
        ],
      ),
    );
  }
}
