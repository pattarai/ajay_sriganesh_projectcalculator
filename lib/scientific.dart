import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class Scientific extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Scientific();
  }
}

class _Scientific extends State<Scientific> {

  String equation = "0";
  String result = "0";
  String expression = "";

  int find(var value) {
    var fact = 1;
    for(var i = 2;i<=value;i++)
    {
      fact *=i;
    }
    return fact;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scientific ",style: TextStyle(color: Colors.orange,fontSize: 25),),backgroundColor: Colors.black,),
      backgroundColor: Colors.black,
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
                  child: Text( equation ,style: TextStyle(fontSize: 40,color: Colors.white),),
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
                  child: Text( result ,style: TextStyle(fontSize: 40,color: Colors.white),),
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
                            height: 52,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed: () {
                                setState(() {
                                  if(equation =="0") {
                                    equation = "(";
                                  }else {
                                    equation = equation + "(";
                                  }
                                });
                              },
                              child: Text("(",style: TextStyle(fontSize: 18,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 52,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed: () {
                                setState(() {
                                  if(equation =="0") {
                                    equation = ")";
                                  }else {
                                    equation = equation + ")";
                                  }
                                });
                              },
                              child: Text(")",style: TextStyle(fontSize: 18,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 52,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed: () {
                                setState(() {
                                  if(equation =="0") {
                                    equation = "sin ";
                                  }else {
                                    equation = equation + "sin ";
                                  }
                                });
                              },
                              child: Text("sin",style: TextStyle(fontSize: 20,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 52,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed: () {
                                setState(() {
                                  if(equation =="0") {
                                    equation = "cos ";
                                  }else {
                                    equation = equation + "cos ";
                                  }
                                });
                              },
                              child: Text("cos",style: TextStyle(fontSize: 20,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 52,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed: () {
                                setState(() {
                                  if(equation =="0") {
                                    equation = "tan ";
                                  }else {
                                    equation = equation + "tan ";
                                  }
                                });
                              },
                              child: Text("tan",style: TextStyle(fontSize: 20,color: Colors.white),),
                            ),
                          )
                        ]
                    ),
                    TableRow(
                        children: [
                          Container(
                            height: 52,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed: () {
                                setState(() {
                                  if(equation =="0") {
                                    equation = "ln ";
                                  }else {
                                    equation = equation + "ln ";
                                  }
                                });
                              },
                              child: Text("ln",style: TextStyle(fontSize: 20,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 52,
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
                              child: Text("C",style: TextStyle(fontSize: 22,color: Colors.orange),),
                            ),
                          ),
                          Container(
                            height: 52,
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
                              child: Text("⌫",style: TextStyle(fontSize: 18,color: Colors.orange),),
                            ),
                          ),
                          Container(
                            height: 52,
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
                              child: Text("%",style: TextStyle(fontSize: 20,color: Colors.orange),),
                            ),
                          ),
                          Container(
                            height: 52,
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
                              child: Text("÷",style: TextStyle(fontSize: 22,color: Colors.orange),),
                            ),
                          )
                        ]
                    ),
                    TableRow(
                        children: [
                          Container(
                            height: 52,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(16),
                                onPressed: () {
                                  setState(() {
                                    //result =  '${find(equation)}';
                                      equation = equation + "^(-1) ";
                                  });
                                },
                              child: Text("1/x",style: TextStyle(fontSize: 20,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 52,
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
                              child: Text("7",style: TextStyle(fontSize: 22,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 52,
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
                              child: Text("8",style: TextStyle(fontSize: 22,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 52,
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
                              child: Text("9",style: TextStyle(fontSize: 22,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 52,
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
                              child: Text("×",style: TextStyle(fontSize: 22,color: Colors.orange),),
                            ),
                          )
                        ]
                    ),
                    TableRow(
                        children: [
                          Container(
                            height: 52,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed: () {
                                setState(() {
                                  equation = equation + "^";
                                });
                              },
                              child: Text("x^",style: TextStyle(fontSize: 22,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 52,
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
                              child: Text("4",style: TextStyle(fontSize: 22,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 52,
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
                              child: Text("5",style: TextStyle(fontSize: 22,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 52,
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
                              child: Text("6",style: TextStyle(fontSize: 22,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 52,
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
                              child: Text("-",style: TextStyle(fontSize: 22,color: Colors.orange),),
                            ),
                          )
                        ]
                    ),
                    TableRow(
                        children: [
                          Container(
                            height: 52,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed: () {
                                setState(() {
                                  if(equation =="0") {
                                    equation = "√";
                                  }else {
                                    equation = equation + "√";
                                  }
                                });
                              },
                              child: Text("√x ",style: TextStyle(fontSize: 22,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 52,
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
                              child: Text("1",style: TextStyle(fontSize: 22,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 52,
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
                              child: Text("2",style: TextStyle(fontSize: 22,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 52,
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
                              child: Text("3",style: TextStyle(fontSize: 22,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 52,
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
                              child: Text("+",style: TextStyle(fontSize: 22,color: Colors.orange),),
                            ),
                          )
                        ]
                    ),
                    TableRow(
                        children: [
                          Container(
                            height: 52,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed:  () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.first_page,color: Colors.orange,size: 30,),
                            ),
                          ),
                          Container(
                            height: 52,
                            color: Colors.black,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed:() {
                                setState(() {
                                if(equation =="0") {
                                equation = "π";
                                }else {
                                  equation = equation + "π";
                                }
                                });
                              },
                              child: Text("π",style: TextStyle(fontSize: 22,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 52,
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
                              child: Text("0",style: TextStyle(fontSize: 22,color: Colors.white),),
                            ),
                          ),
                          Container(
                            height: 52,
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
                              child: Text(".",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          ),
                          Container(
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              shape: BoxShape.circle,
                            ),
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(16),
                              onPressed: () {
                                setState(() {

                                });
                                expression = equation;
                                expression = expression.replaceAll("×", "*");
                                expression = expression.replaceAll("÷", "/");
                                expression = expression.replaceAll("√", "sqrt");
                                expression = expression.replaceAll("π", "3.14159265");

                                try{
                                  Parser p = Parser();
                                  Expression exp = p.parse(expression);

                                  ContextModel cm = ContextModel();
                                  result = '= ${exp.evaluate(EvaluationType.REAL, cm)}';
                                }catch(e){
                                  result = "Error";
                                }
                              },
                              child: Text("=",style: TextStyle(fontSize: 22,color: Colors.black),),
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