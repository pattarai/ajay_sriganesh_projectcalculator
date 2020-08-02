import 'package:calculator/bmicalculator.dart';
import 'package:calculator/update.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'scific.dart';
import 'bmicalculator.dart';
import 'temperature.dart';
import 'update.dart';

class DrawerItem {
  String title;
  IconData icon;

  DrawerItem(this.title, this.icon);
}

class HomeScreen extends StatefulWidget {

  var drawerItems = [
    new DrawerItem("Standard ", Icons.check_circle_outline),
    new DrawerItem("Scientific", Icons.line_weight),
    new DrawerItem("BMI ", Icons.local_play),
    new DrawerItem("Temperature Converter", Icons.ac_unit),
    new DrawerItem("Exchange Rate", Icons.attach_money),
    new DrawerItem("Length Converter", Icons.directions_run),
    new DrawerItem("Area Converter", Icons.check_box_outline_blank),
    new DrawerItem("Volume Converter", Icons.book),
  ];

  @override
  State<StatefulWidget> createState() {
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  BuildContext _ctx;
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return calculator();
        break;
      case 1:
        return Scific();
        break;
      case 2:
        return bmicalc();
        break;
      case 3:
        return tempcalc();
        break;
      case 4:
        return update();
        break;
      case 5:
        return update();
        break;
      case 6:
        return update();
        break;
      case 7:
        return update();
        break;
        default:
        return  Text("Error") ;
        break;
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var drawerOptions = <Widget>[];

    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      if (i == 7) {
        drawerOptions.add(
          const Divider(height: 1.0, color: Colors.grey),
        );
      }
      drawerOptions.add(new ListTile(
        leading: new Icon(d.icon,color: Colors.orange,),
        title: new Text(
          d.title,
          style: TextStyle(fontFamily: "Poppins",color: Colors.white,),
        ),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }
    return new Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Text(
          widget.drawerItems[_selectedDrawerIndex].title,style: TextStyle(color: Colors.orange,fontSize: 25,)
        ),
      ),
      drawer: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient( begin: Alignment.topCenter, end: Alignment.bottomCenter,
              colors: [Colors.black,Colors.black]),),
        child: new Drawer(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.black,
              child: new Column(
                children: <Widget>[
                  new UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/ncback.jpg"),
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.center,
                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(1),
                              BlendMode.dstATop),
                        ),),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient( begin: Alignment.topCenter, end: Alignment.bottomCenter,
                          colors: [Colors.black,Colors.black]),),
                      child: new Column(children: drawerOptions),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}