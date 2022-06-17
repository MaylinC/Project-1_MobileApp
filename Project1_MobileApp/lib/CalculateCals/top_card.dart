import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class TopCard extends StatelessWidget {

 TopCard({required this.calories,
   required this.consumption,
   required this.activities,
   required this.fat,
   required this.pro,
   required this.carbs,

 });

  final String calories;
  final String consumption;
  final String activities;
  final String fat;
  final String pro;
  final String carbs;

 String stringModifier(double value) {
   final roundedValue = value.ceil().toInt().toString();
   return '$roundedValue Cal';
 }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        height: 350,
        color: Colors.pink[50],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Today\'s Calories',
                style: TextStyle(color: Colors.deepPurple, fontSize: 23, fontWeight: FontWeight.bold)),
              ),
              SleekCircularSlider(
                appearance: CircularSliderAppearance(
                    infoProperties: InfoProperties(
                        modifier: stringModifier,
                        mainLabelStyle: TextStyle(fontSize:25,fontWeight: FontWeight.bold, color: Colors.grey[600]
                        ),
                    ),
                    customWidths: CustomSliderWidths(progressBarWidth: 14)),
                min: -3000,
                max: 3000,
                initialValue: double.parse(calories),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0, 0.0, 0.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton(icon: Icon(Icons.circle  , size: 12, color: Colors.green ,),onPressed: (){},),
                              Column(
                                children: [
                                  Text('Carbs', style: TextStyle(fontSize: 19 , fontWeight: FontWeight.bold)),
                                  Text(carbs, style: TextStyle(fontSize: 19)),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0.0, 0.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton(icon: Icon(Icons.circle  , size: 12, color: Colors.red ,),onPressed: (){},),
                              Column(
                                children: [
                                  Text('Fat', style: TextStyle(fontSize: 19 , fontWeight: FontWeight.bold)),
                                  Text(fat, style: TextStyle(fontSize: 19)),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 25, 0.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton(icon: Icon(Icons.circle  , size: 12, color: Colors.amber[600] ,),onPressed: (){},),
                              Column(
                                children: [
                                  Text('Protein',
                                      style: TextStyle(fontSize: 19 ,fontWeight: FontWeight.bold)
                                  ),
                                  Text(pro, style: TextStyle(fontSize: 19)),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
               ],
              ),
              SizedBox(
                height:4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.restaurant, size: 30, color: Colors.brown[400],),
                            ),
                            Column(
                              children: [
                                Text('Consumption', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                Text(consumption ,style: TextStyle(fontSize: 18))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Icon(Icons.directions_run, size: 35,color: Colors.blueGrey),
                            ),
                            Column(
                              children: [
                                Text('Activities', style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold), ),
                                Text(activities, style: TextStyle(fontSize: 18, ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
