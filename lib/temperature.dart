import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'dart:math';

class tempcalc extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _tempcalc();
  }
}

class _tempcalc extends State<tempcalc> {

  double calculationCel;
  double calculationFah;
  String calcCel;
  String result;
  String calcFah;

  TextEditingController celFieldController = new TextEditingController();
  TextEditingController fahFieldController = new TextEditingController();

  void calculatecel()
  {
    double fahrenheit = double.parse(fahFieldController.text);
    {
      setState(() {
        calculationCel = ((fahrenheit - 32) * 5/9);
        calcCel = calculationCel.toStringAsFixed(2);
      });
    }
  }
  void calculatefah()
  {
    double celcius = double.parse(celFieldController.text);
    {
      setState(() {
        calculationFah = (celcius * 9/5) + 32;
        calcFah = calculationFah.toStringAsFixed(2);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient( begin: Alignment.topCenter, end: Alignment.bottomCenter,
              colors: [Colors.orange,Colors.orange,Colors.black]),),
        child: ListView(
          children: <Widget>[
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    style: TextStyle(fontSize: 20),
                    controller: celFieldController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Enter Celcius",
                      labelStyle: TextStyle(color: Colors.black),
                      icon: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Icon(Icons.cloud,color: Colors.black,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      onPressed: calculatefah,
                      child: Text("F°",style: TextStyle(fontSize: 20),),
                      color: Colors.black,
                      textColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.transparent,width: 10)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(calcFah!=null ? '$calcFah':'', style: TextStyle(color: Colors.black,fontSize: 45,fontWeight: FontWeight.w800),),
                  ),
                  TextField(
                    style: TextStyle(fontSize: 20),
                    controller: fahFieldController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Enter Fahrenhiet",
                      labelStyle: TextStyle(color: Colors.black),
                      icon: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Icon(Icons.cloud,color: Colors.black,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      onPressed: calculatecel,
                      child: Text("C°",style: TextStyle(fontSize: 20)),
                      color: Colors.black,
                      textColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.transparent,width: 10)
                      ),
                    ),
                  ),
                  Text(calcCel!=null ? '$calcCel':'', style: TextStyle(color: Colors.black,fontSize: 45,fontWeight: FontWeight.w800),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

