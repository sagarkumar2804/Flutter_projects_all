import 'package:flutter/material.dart';
import 'package:mini_app/HomeScreen.dart';
import 'DrawerScreen.dart';


class firstScreen extends StatefulWidget {
  @override
  _firstScreenState createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            DrawerScreen(),
            HomeScreen(),
          ],),
      ),);
  }
}
