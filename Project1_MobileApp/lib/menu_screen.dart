import 'package:flutter/material.dart';
import 'base_card.dart';
import 'foods_menu.dart';
import 'drinks_menu.dart';
import 'snacks_menu.dart';
import 'calories_consumption.dart';
import 'package:intl/intl.dart';

enum FoodSelection {
  foods,
  drinks,
  snacks

}

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {

  // FoodSelection? selectedFood;
  FoodSelection? selectedFood;

  // String now = DateFormat.yMMMd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.fromLTRB(35, 0.0, 0.0, 0.0),
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.access_time_filled  , size: 30, color: Colors.grey[800] ,),onPressed: (){},),
                Text( DateFormat.yMMMd().format(DateTime.now()) ,
                  style: TextStyle(color: Colors.grey[800]),
                ),
              ],
            ),
          ),
          flexibleSpace: const Image(
            image: AssetImage('assets/img1.jpg'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar:BottomAppBar(
        color: Colors.indigo[100],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child: IconButton(icon: Icon(Icons.menu, size: 30 ),onPressed: (){},),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child: IconButton(icon: Icon(Icons.calendar_month,size: 30 ),onPressed: (){
                Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) {
                        return CaloriesConsumption();
                      },
                    )
                  );
                },
              ),
            )
          ],
        ),
      ),
      body: Padding(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 1, right: 3, top: 2, bottom: 5),
                    child: BaseCard(
                      theColor: selectedFood == FoodSelection.foods ? Colors.blueGrey.shade200 : Colors.pink.shade100,
                      catIcon: Icons.dinner_dining_sharp,
                      strText: 'Meals',
                      theOnTap: () {
                        setState(() {
                          selectedFood = FoodSelection.foods;
                        });
                      },
                    ),
                )
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3, right: 3, top: 2, bottom: 5),
                    child: BaseCard(
                      theColor: selectedFood == FoodSelection.drinks ? Colors.blueGrey.shade200: Colors.purple.shade200,
                      catIcon: Icons.coffee,
                      strText: 'Drinks',
                      theOnTap: () {
                        setState(() {
                          selectedFood = FoodSelection.drinks;
                        });
                      },
                    ),
                  )
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3, right: 1, top: 2, bottom: 5),
                    child: BaseCard(
                      theColor: selectedFood == FoodSelection.snacks ? Colors.blueGrey.shade200: Colors.indigo.shade200,
                      catIcon: Icons.apple,
                      strText: 'Snacks',
                      theOnTap: () {
                        setState(() {
                          selectedFood = FoodSelection.snacks;
                        });
                      },
                    ),
                  )
              ),
            ],
          ),

          Expanded(
            child: Container(
                // margin: EdgeInsets.only(bottom: 100),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.blue[50]
                ),
              // padding: const EdgeInsets.all(8),
              width: 400.0,
              height: 100.0,
              child:
              (selectedFood==FoodSelection.foods) ? FoodsMenu(): (selectedFood==FoodSelection.drinks) ? DrinksMenu() : SnacksMenu(),
                ),
            ),
        ])
      ),
    );
  }
}
