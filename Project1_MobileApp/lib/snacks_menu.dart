import 'package:flutter/material.dart';
import 'list_item_widget.dart';

class SnacksMenu extends StatefulWidget {
  const SnacksMenu({Key? key}) : super(key: key);

  @override
  State<SnacksMenu> createState() => _SnacksMenuState();
}

class _SnacksMenuState extends State<SnacksMenu> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListItemWidget(
            img: Image.asset('assets/img14.png',
                height: 70,
                width: 90
            ),
            foodName: "Peanut Toast",
            calories: '255',
            gram: '67',
            protein: '9',
            carb: '27',
            fat: '13',
          ),
          SizedBox(
            width: double.infinity,
            height:1,
            child: Container(
              color: Color(0xff2C000000),
            ),
          ),
          ListItemWidget(
            img: Image.asset('assets/img15.png',
                height: 75,
                width: 75
            ),
            foodName: "Avocado",
            calories: '322',
            gram: '201',
            protein: '4',
            carb: '17',
            fat: '29',
          ),
          SizedBox(
            width: double.infinity,
            height:1,
            child: Container(
              color: Color(0xff2C000000),
            ),
          ),
          ListItemWidget(
            img: Image.asset('assets/img16.png',
                height: 85,
                width: 85
            ),
            foodName: "Protein Bar",
            calories: '211',
            gram: '53',
            protein: '20',
            carb: '21',
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
            img: Image.asset('assets/img17.png',
                height: 95,
                width: 95
            ),
            foodName: "Yogurt",
            calories: '107',
            gram: '170',
            protein: '9',
            carb: '12',
            fat: '3',
          ),
          SizedBox(
            width: double.infinity,
            height:1,
            child: Container(
              color: Color(0xff2C000000),
            ),
          ),
          ListItemWidget(
            img: Image.asset('assets/img18.png',
                height: 75,
                width: 75
            ),
            foodName: "Chocolate",
            calories: '37',
            gram: '7',
            protein: '0',
            carb: '4',
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
            img: Image.asset('assets/img27.png',
                height: 109,
                width: 109
            ),
            foodName: "Vani Ice Cream",
            calories: '273',
            gram: '132',
            protein: '4.6',
            carb: '31',
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
            img: Image.asset('assets/img28.png',
                height: 109,
                width: 109
            ),
            foodName: "Banana",
            calories: '105',
            gram: '118',
            protein: '1.3',
            carb: '27',
            fat: '0.4',
          ),
          SizedBox(
            width: double.infinity,
            height:1,
            child: Container(
              color: Color(0xff2C000000),
            ),
          ),
          ListItemWidget(
            img: Image.asset('assets/img29.png',
                height: 109,
                width: 109
            ),
            foodName: "ChocChip Cookies",
            calories: '148',
            gram: '30',
            protein: '1.5',
            carb: '20',
            fat: '7.4',
          ),
        ],
      ),
    );
  }
}
