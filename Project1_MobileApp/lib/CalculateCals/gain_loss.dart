import 'package:flutter/material.dart';

class GainLoss extends StatelessWidget {

  GainLoss({required this.name,
    required this.calories,
    this.fat,
    this.carbs,
    this.pro,
    this.gram,
    required this.gainOrLoss});

  final String name;
  final String calories;
  final String? carbs;
  final String? pro;
  final String? fat;
  final String? gram;
  final String gainOrLoss;

  @override
  Widget build(BuildContext context) {

    return

      gainOrLoss == 'gain' ?

      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
        padding: EdgeInsets.all(10.0) ,
        color: Colors.blue[50],
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 5, left: 3),
                  child: Text(name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 5, left: 3),
                  child: Text('(${gram} g)',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 5, left: 3),
                  child: Text( gainOrLoss == 'loss' ? '-' + calories + ' Cal' : '+' + calories + ' Cal',
                     style:  TextStyle(color: gainOrLoss == 'loss' ?  Colors.red : Colors.green, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                ],
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                IconButton(icon: Icon(Icons.circle  , size: 8, color: Colors.green ,),onPressed: (){},),
                Text('${carbs} g',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                IconButton(icon: Icon(Icons.circle  , size: 8, color: Colors.red),onPressed: (){},),
                Text('${fat} g',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                IconButton(icon: Icon(Icons.circle  , size: 8, color: Colors.amber[600]),onPressed: (){},),
                Text('${pro} g',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
      )

          :

    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        color: Colors.deepPurple[50],
        height: 60,
        child: Center(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(gainOrLoss == 'loss' ? '-' + calories + ' Cal' : '+' + calories + ' Cal',
                style:  TextStyle(color: gainOrLoss == 'loss' ?  Colors.red : Colors.green, fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            )
        ),
      ),
    );
  }
}
