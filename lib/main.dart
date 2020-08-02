import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'drawer.dart';
import 'scientific.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
  ));
}

class calculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _calculator();
  }
}

class _calculator extends State<calculator> {

 String equation = "0";
 String result = "0";
 String expression = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient( begin: Alignment.topCenter, end: Alignment.bottomCenter,
              colors: [Colors.black,Colors.black]),),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: Text( equation,style: TextStyle(fontSize: 40,color: Colors.white),),
                  padding: EdgeInsets.fromLTRB(30, 30, 10, 0),
        ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: Text( result,style: TextStyle(fontSize: 40,color: Colors.white),),
                  padding: EdgeInsets.fromLTRB(30, 30, 10, 0),
                ),
              ),
              Container(
                height: 315,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        Container(
                          height: 63,
                          color: Colors.black,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            padding: EdgeInsets.all(16),
                            onPressed: () {
                              setState(() {
                                equation="0";
                                result="0";
                              });
                            },
                            child: Text("C",style: TextStyle(fontSize: 30,color: Colors.orange),),
                          ),
                        ),
                        Container(
                          height: 63,
                          color: Colors.black,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.all(16),
                            onPressed: () {
                              setState(() {
                                equation = equation.substring(0,equation.length-1);
                                if(equation == "") {
                                  equation = "0";
                                }
                              });
                            },
                            child: Text("⌫",style: TextStyle(fontSize: 30,color: Colors.orange),),
                          ),
                        ),
                        Container(
                          height: 63,
                          color: Colors.black,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            padding: EdgeInsets.all(16),
                            onPressed:() {
                              setState(() {
                                  equation = equation + "%";
                              });
                            },
                            child: Text("%",style: TextStyle(fontSize: 30,color: Colors.orange),),
                          ),
                        ),
                        Container(
                          height: 63,
                          color: Colors.black,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            padding: EdgeInsets.all(16),
                            onPressed: () {
                              setState(() {
                                  equation = equation + "÷";
                              });
                            },
                            child: Text("÷",style: TextStyle(fontSize: 30,color: Colors.orange),),
                          ),
                        )
                      ]
                    ),
                    TableRow(
                        children: [
                          Container(
                            height: 63,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed: () {
                                setState(() {
                                  if(equation =="0") {
                                    equation = "7";
                                  }else {
                                    equation = equation + "7";
                                  }
                                });
                              },
                              child: Text("7",style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 63,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed: () {
                                setState(() {
                                  if(equation =="0") {
                                    equation = "8";
                                  }else {
                                    equation = equation + "8";
                                  }
                                });
                              },
                              child: Text("8",style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 63,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed: () {
                                setState(() {
                                  if(equation =="0") {
                                    equation = "9";
                                  }else {
                                    equation = equation + "9";
                                  }
                                });
                              },
                              child: Text("9",style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 63,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed: () {
                                setState(() {
                                    equation = equation + "×";
                                });
                              },
                              child: Text("×",style: TextStyle(fontSize: 30,color: Colors.orange),),
                            ),
                          )
                        ]
                    ),
                    TableRow(
                        children: [
                          Container(
                            height: 63,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed:() {
                                setState(() {
                                  if(equation =="0") {
                                    equation = "4";
                                  }else {
                                    equation = equation + "4";
                                  }
                                });
                              },
                              child: Text("4",style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 63,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed: () {
                                setState(() {
                                  if(equation =="0") {
                                    equation = "5";
                                  }else {
                                    equation = equation + "5";
                                  }
                                });
                              },
                              child: Text("5",style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 63,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed: () {
                                setState(() {
                                  if(equation =="0") {
                                    equation = "6";
                                  }else {
                                    equation = equation + "6";
                                  }
                                });
                              },
                              child: Text("6",style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 63,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed: () {
                                setState(() {
                                    equation = equation + "-";
                                });
                              },
                              child: Text("-",style: TextStyle(fontSize: 30,color: Colors.orange),),
                            ),
                          )
                        ]
                    ),
                    TableRow(
                        children: [
                          Container(
                            height: 63,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed: () {
                                setState(() {
                                  if(equation =="0") {
                                    equation = "1";
                                  }else {
                                    equation = equation + "1";
                                  }
                                });
                              },
                              child: Text("1",style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 63,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed: () {
                                setState(() {
                                  if(equation =="0") {
                                    equation = "2";
                                  }else {
                                    equation = equation + "2";
                                  }
                                });
                              },
                              child: Text("2",style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 63,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed: () {
                                setState(() {
                                  if(equation =="0") {
                                    equation = "3";
                                  }else {
                                    equation = equation + "3";
                                  }
                                });
                              },
                              child: Text("3",style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 63,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed:() {
                                setState(() {
                                    equation = equation + "+";
                                });
                              },
                              child: Text("+",style: TextStyle(fontSize: 30,color: Colors.orange),),
                            ),
                          )
                        ]
                    ),
                    TableRow(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (BuildContext context)=>Scientific()));
                            },
                            child: Container(
                              height: 63,
                              color: Colors.black,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                padding: EdgeInsets.all(16),
                                onPressed: null,
                                child: Icon(Icons.add_to_home_screen,color: Colors.orange,size: 30,),
                              ),
                            ),
                          ),
                          Container(
                            height: 63,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed: () {
                                setState(() {
                                  if(equation =="0") {
                                    equation = "0";
                                  }else {
                                    equation = equation + "0";
                                  }
                                });
                              },
                              child: Text("0",style: TextStyle(fontSize: 30,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 63,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed: () {
                                setState(() {
                                  if(equation =="0") {
                                    equation = ".";
                                  }else {
                                    equation = equation + ".";
                                  }
                                });
                              },
                              child: Text(".",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          ),
                          Container(
                            height: 58,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              shape: BoxShape.circle,
                            ),
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.fromLTRB(10,3,10,5),
                              onPressed: () {
                                setState(() {

                                });
                                expression = equation;
                                expression = expression.replaceAll("×", "*");
                                expression = expression.replaceAll("÷", "/");

                                try{
                                  Parser p = Parser();
                                  Expression exp = p.parse(expression);

                                  ContextModel cm = ContextModel();
                                  result = '= ${exp.evaluate(EvaluationType.REAL, cm)}';
                                }catch(e){
                                  result = "Error";
                                }
                              },
                              child: Text("=",style: TextStyle(fontSize: 30,color: Colors.black),),
                            ),
                          )
                        ]
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


