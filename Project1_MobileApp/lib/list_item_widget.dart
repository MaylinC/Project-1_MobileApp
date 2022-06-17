import 'package:flutter/material.dart';
import 'CalculateCals/keep.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ListItemWidget extends StatefulWidget {

  const ListItemWidget({ required this.foodName,
    required this.calories,
    required this.protein,
    required this.carb,
    required this.fat,
    required this.img,
    required this.gram,
    this.drink,
  });

  final String foodName;
  final String calories;
  final String protein;
  final String fat;
  final String carb;
  final Image img;
  final String gram;
  final String? drink;

  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget> {


  final _textcontrollerProtion = TextEditingController();
  final _textcontrollerCal = TextEditingController();
  bool _portion = false;
  final _formKey = GlobalKey<FormState>();
  num ans_fat = 0;
  num ans_pro = 0;
  num ans_carbs = 0;
  num ans_gram = 0;



  void _enterPortion() {
    Keep.add(
        widget.foodName,
        (double.parse(widget.calories) * double.parse(_textcontrollerProtion.text)).toStringAsFixed(2),
        (double.parse(widget.fat) * double.parse(_textcontrollerProtion.text)).toStringAsFixed(2),
        (double.parse(widget.carb) * double.parse(_textcontrollerProtion.text)).toStringAsFixed(2),
        (double.parse(widget.protein) * double.parse(_textcontrollerProtion.text)).toStringAsFixed(2),
        (double.parse(widget.gram) * double.parse(_textcontrollerProtion.text)).toStringAsFixed(2),
        true
    );
    setState(() {});
  }

  double _calculateCalDeduct(String calCon, String pro, String cal) {
    double percent_of_cal = (double.parse(calCon) / double.parse(cal));
    double percent_of_pro = percent_of_cal * double.parse(pro);
    double result = double.parse(pro) - percent_of_pro ;
    return result;
  }

  void _enterDeduct() {
    ans_pro = _calculateCalDeduct(_textcontrollerCal.text, widget.protein, widget.calories);
    ans_carbs = _calculateCalDeduct(_textcontrollerCal.text, widget.carb, widget.calories);
    ans_fat = _calculateCalDeduct(_textcontrollerCal.text, widget.fat, widget.calories);
    ans_gram = _calculateCalDeduct(_textcontrollerCal.text, widget.gram, widget.calories);

    Keep.add(
        widget.foodName,
        (double.parse(widget.calories) - double.parse(_textcontrollerCal.text)).toString(),
        (ans_fat).toStringAsFixed(2),
        (ans_carbs).toStringAsFixed(2),
        (ans_pro).toStringAsFixed(2),
        (ans_gram).toStringAsFixed(2),
        true
    );
    setState(() {});
  }

  void clearTextAct() {
    _textcontrollerProtion.clear();
    _textcontrollerCal.clear();
  }

  void _newPortion() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, setState) {
                return AlertDialog(
                    title: Text('Food Editor Option'),
                    content: SingleChildScrollView(
                        child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Portion'),
                                  Switch(
                                      value: _portion,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _portion = newValue;
                                        });
                                      }
                                  ),
                                  Text('Cal Deduction')
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),

                              if (_portion == false)...[

                                Row(
                                  children: [
                                    Expanded(
                                      child: Form(
                                        key: _formKey,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'Portion (ex: 1/2 as 0.5) ',
                                            suffixIcon: IconButton(
                                              icon: Icon(Icons.clear),
                                              onPressed: (){ clearTextAct; },
                                            ),
                                          ),
                                          validator: (text) {
                                            if (text == null || text.isEmpty || double.tryParse(text) == null) {
                                              return 'Enter your food portion as decimal';
                                            }
                                            return null;
                                          },
                                          controller: _textcontrollerProtion,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
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
                                            _enterPortion();
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
                                            hintText: 'Calories Deduction?',
                                            suffixIcon: IconButton(
                                              icon: Icon(Icons.clear),
                                              onPressed: (){ clearTextAct; },
                                            ),
                                          ),
                                          validator: (text) {
                                            if (text == null || text.isEmpty || int.tryParse(text) == null) {
                                              return 'Enter Calories In Number';
                                            }
                                            return null;
                                          },
                                          controller: _textcontrollerCal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
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
                                            _enterDeduct();
                                            Navigator.of(context).pop();
                                          }
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ]
                            ]
                        )
                    )
                );
              }
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 1, bottom: 1),
      child:
      Slidable(
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 15, left: 5),
                child: widget.img
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${widget.foodName}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  if (widget.gram == '0') ...[
                    Text( "(1 dish)",
                    style: TextStyle(fontSize: 18),
                    ),
                  ]
                  else if (widget.drink == "drink") ...[
                    Text( '(${widget.gram.toString()} ml)',
                      style: TextStyle(fontSize: 18),
                    ),
                  ]
                  else...[
                    Text(
                      '(${widget.gram.toString()} g)',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 10, bottom: 6,top: 7),
                child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${widget.calories.toString()} cal',
                            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' fat ${widget.fat.toString()} g',
                            style: TextStyle(fontSize: 17),
                          ),
                          Text(
                            ' pro ${widget.protein.toString()} g',
                            style: TextStyle(fontSize: 17),
                          ),
                          Text(
                            ' carb ${widget.carb.toString()} g',
                            style: TextStyle(fontSize: 17),
                          ),
                        ]
                    )
              ),
            ],
          ),
          actionPane: SlidableDrawerActionPane(),
          actions: [
            IconSlideAction(
              icon: Icons.add,
              color: Colors.green[300],
              caption: 'Add',
              onTap: () {Keep.add(widget.foodName, widget.calories, widget.fat, widget.carb, widget.protein, widget.gram, true);},
            ),
            IconSlideAction(
                  icon: Icons.edit,
                  color: Colors.red[300],
                  caption: 'Edit',
                  onTap: () { _newPortion(); },
            )
          ],
        )
    );
  }
}

