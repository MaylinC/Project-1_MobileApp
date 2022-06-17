import 'package:flutter/material.dart';
import 'menu_screen.dart';
import 'CalculateCals/top_card.dart';
import 'CalculateCals/gain_loss.dart';
import 'CalculateCals/keep.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';

enum SlidableAction {

  delete

}

class CaloriesConsumption extends StatefulWidget {
  const CaloriesConsumption({Key? key}) : super(key: key);

  @override
  State<CaloriesConsumption> createState() => _CaloriesConsumptionState();
}

class _CaloriesConsumptionState extends State<CaloriesConsumption> {

  final _textcontrollerAMOUNT = TextEditingController();
  final _textcontrollerITEM = TextEditingController();
  final _textcontrollerGRAM = TextEditingController();
  final _textcontrollerFAT = TextEditingController();
  final _textcontrollerPRO = TextEditingController();
  final _textcontrollerCRABS = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isGain = false;

  void onDismissed(int index, SlidableAction action) {
    setState(() {
      Keep.currentTransactions.removeAt(index);
    });
  }

  void _enterGainLoss() {
    Keep.add(
        _textcontrollerITEM.text,
        _textcontrollerAMOUNT.text,
        _textcontrollerFAT.text,
        _textcontrollerCRABS.text,
        _textcontrollerPRO.text,
        _textcontrollerGRAM.text,
        _isGain
    );
    setState(() {});
  }

  void clearTextAct() {
    _textcontrollerITEM.clear();
    _textcontrollerAMOUNT.clear();
  }

  void clearTextCon() {
    _textcontrollerITEM.clear();
    _textcontrollerAMOUNT.clear();
    _textcontrollerFAT.clear();
    _textcontrollerCRABS.clear();
    _textcontrollerPRO.clear();
    _textcontrollerGRAM.clear();
  }

  void _newGainLoss() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, setState) {
                return AlertDialog(
                  title: Text('Add Cals Gain/Loss'),
                  content: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Loss'),
                              Switch(
                                  value: _isGain,
                                  onChanged: (newValue) {
                                    setState(() {
                                      _isGain = newValue;
                                    });
                                  }
                              ),
                              Text('Consumption')
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),

                          if (_isGain == false)...[
                            Row(
                              children: [
                                Expanded(
                                  child: Form(
                                    key: _formKey,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'Activity?',
                                        suffixIcon: IconButton(
                                          icon: Icon(Icons.clear),
                                          onPressed: clearTextAct,
                                        ),
                                      ),
                                      validator: (text) {
                                        if (text == null || text.isEmpty) {
                                          return 'Enter an Activity';
                                        }
                                        return null;
                                      },
                                      controller: _textcontrollerITEM,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Calories loss?',
                                    ),
                                    controller: _textcontrollerAMOUNT,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25.0, 10, 0.0, 0.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                                    child: MaterialButton(
                                      color: Colors.red[800],
                                      child:
                                      Text('Cancel', style: TextStyle(color: Colors
                                          .white)),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ),
                                  MaterialButton(
                                    color: Colors.green[800],
                                    child: Text('Enter', style: TextStyle(color: Colors
                                        .white)),
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        _enterGainLoss();
                                        Navigator.of(context).pop();
                                      }
                                    },
                                  )
                                ],
                              ),
                            ),
                          ]
                          else...[
                            Row(
                              children: [
                                Expanded(
                                  child: Form(
                                    key: _formKey,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'Name?',
                                        suffixIcon: IconButton(
                                          icon: Icon(Icons.clear),
                                          onPressed: clearTextCon,
                                        ),
                                      ),
                                      validator: (text) {
                                        if (text == null || text.isEmpty) {
                                          return 'Enter an Name';
                                        }
                                        return null;
                                      },
                                      controller: _textcontrollerITEM,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 5, 0.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'Calories?',
                                      ),
                                      controller: _textcontrollerAMOUNT,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Gram?',
                                    ),
                                    controller: _textcontrollerGRAM,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 5, 0.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'Fat?',
                                      ),
                                      controller: _textcontrollerFAT,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 5, 0.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'Carbs?',
                                      ),
                                      controller: _textcontrollerCRABS,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Protein?',
                                    ),
                                    controller: _textcontrollerPRO,
                                  ),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(40.0, 10, 0.0, 0.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                                    child: MaterialButton(
                                      color: Colors.red[800],
                                      child:
                                      Text('Cancel', style: TextStyle(color: Colors
                                          .white)),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ),
                                  MaterialButton(
                                    color: Colors.green[800],
                                    child: Text('Enter', style: TextStyle(color: Colors
                                        .white)),
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        _enterGainLoss();
                                        Navigator.of(context).pop();
                                      }
                                    },
                                  )
                                ],
                              ),
                            )
                          ]
                        ],
                      )
                  ),
                );
              });
        });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(30, 0.0, 0.0, 0.0),
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
            IconButton(icon: Icon(Icons.menu, size: 30),onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return MenuScreen();
                  },
                  )
              );
            },),
            IconButton(icon: Icon(Icons.add, size: 30 ),onPressed: () => _newGainLoss()),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TopCard( calories: (Keep.caloriesGainAddition()-Keep.caloriesLossAddition()).toString(),
          consumption: Keep.caloriesGainAddition().toString(),
          activities: Keep.caloriesLossAddition().toString(),
          fat: Keep.calculateFat().toStringAsFixed(2),
          pro: Keep.calculateProtein().toStringAsFixed(2),
          carbs: Keep.calculateCarbs().toStringAsFixed(2)),
          Expanded(
              child: Container(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                          child: ListView.builder(
                            itemCount: Keep.currentTransactions.length,
                              itemBuilder: (context, index) {
                                return Slidable(
                                    child: GainLoss(
                                      name: Keep.currentTransactions[index][0],
                                      calories: Keep.currentTransactions[index][1],
                                      fat: Keep.currentTransactions[index][2],
                                      carbs:  Keep.currentTransactions[index][3],
                                      pro: Keep.currentTransactions[index][4],
                                      gram: Keep.currentTransactions[index][5],
                                      gainOrLoss: Keep.currentTransactions[index][6],

                                    )
                                    , actionPane: SlidableDrawerActionPane(),

                                  secondaryActions: [
                                    IconSlideAction(
                                      icon: Icons.delete,
                                      color: Colors.red[300],
                                      caption: 'Delete',
                                      onTap: () => onDismissed(index, SlidableAction.delete),
                                    )
                                  ],
                                );
                          }),
                      )
                    ],
                  ),
                )
              )
          ),
        ],
      ),
    );
  }
}
