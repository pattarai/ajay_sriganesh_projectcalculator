import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'dart:math';

class bmicalc extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _bmicalc();
  }
}

class _bmicalc extends State<bmicalc> {

  double calculation;
  String calcResult;
  String result;

  TextEditingController ageFieldController = new TextEditingController();
  TextEditingController heightFieldController = new TextEditingController();
  TextEditingController weightFieldController = new TextEditingController();

  void calculate()
  {
    double height = double.parse(heightFieldController.text);
    double weight = double.parse(weightFieldController.text);

    if(height!=null && weight!=null)
      {
        setState(() {
          height = height*12;
          calculation = (weight/(height*height))*703;
          calcResult = calculation.toStringAsFixed(2);
          if(calculation<18.5) {
            result = "UNDERWEIGHT";
          }else if(calculation>=18.5 && calculation <=24.9 ) {
            result = "NORMAL";
          }else if(calculation>=25.0 && calculation<=39.9) {
            result = "OVERWEIGHT";
          }else {
            result = "OBESE";
          }
        });
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 300,
              color: Colors.orange,
              child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 TextField(
                   style: TextStyle(fontSize: 18),
                   controller: ageFieldController,
                   keyboardType: TextInputType.number,
                   cursorColor: Colors.orange,
                   decoration: InputDecoration(
                     labelText: "Enter Age",
                     labelStyle: TextStyle(color: Colors.black),
                     icon: Icon(Icons.date_range,color: Colors.black,size: 30,),
                   ),
                 ),
                 TextField(
                   style: TextStyle(fontSize: 18),
                   controller: heightFieldController,
                   keyboardType: TextInputType.number,
                   cursorColor: Colors.orange,
                   decoration: InputDecoration(
                     labelText: "Enter Height in Feet",
                     labelStyle: TextStyle(color: Colors.black),
                     icon: Icon(Icons.accessibility, color: Colors.black,size: 30),
                   ),
                 ),
                 TextField(
                   style: TextStyle(fontSize: 18),
                   controller: weightFieldController,
                   keyboardType: TextInputType.number,
                   cursorColor: Colors.orange,
                   decoration: InputDecoration(
                     labelText: "Enter weight in Pounds",
                     labelStyle: TextStyle(color: Colors.black),
                     icon: Icon(Icons.category,color: Colors.black,size: 30),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top:22.0),
                   child: RaisedButton(
                     onPressed: calculate,
                     child: Text("CALCULATE", style: TextStyle(fontSize: 23),),
                     color: Colors.black,
                     textColor: Colors.orange,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10),
                       side: BorderSide(color: Colors.orange,width: 2)
                     ),
                   ),
                 )
               ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient( begin: Alignment.topCenter, end: Alignment.bottomCenter,
                    colors: [Colors.orange,Colors.black]),),
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(calcResult!=null ? '$calcResult':'',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 45,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:18.0),
                    child: Text(result!=null ? result :''
                      ,style: TextStyle(
                          color: Colors.orange,
                          fontSize: 60,fontFamily: "Nuanza"),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

