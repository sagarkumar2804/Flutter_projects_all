import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'configuration.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:50,left: 10),
      color: primarycolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Ecstacks',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                Text('Active status',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

              ],
              )
            ],
          ),
          Column(
            children: drawerItem.map((element) => Row(
                children: <Widget>[
                  Icon(element['icon'],color: Colors.white,size: 40,),
                  SizedBox(height: 100,),
                  Text(element['title'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),

                ],
              )).toList(),
          ),
          Row(
            children: <Widget>[
              IconButton(icon: Icon(Icons.settings,color: Colors.white,)),
              Text('Settings',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              SizedBox(width: 10,),
              Container(
                width: 2,
                height: 10,
                color: Colors.white,),
              SizedBox(width: 10,),
                Text('LOG OUT',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

            ],
          ),
        ],
      ),
    );
  }
}
