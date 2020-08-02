import 'package:flutter/material.dart';

class update extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
            decoration: BoxDecoration(
            gradient: LinearGradient( begin: Alignment.topCenter, end: Alignment.bottomCenter,
            colors: [Colors.black,Colors.black]),),
            child: Padding(
              padding: const EdgeInsets.only(left:18.0),
              child: Text("Coming Soon...", style: TextStyle(color: Colors.orange, fontFamily: "BillionDreams",fontSize: 70),),
            ),
      ),
          ],
        ),
    ),
    );
  }
}