import 'package:flutter/material.dart';


Color primarycolor=Color(0xff416d6d);
List <BoxShadow> ListShadow=[
  BoxShadow(color: Colors.grey[300],blurRadius: 30,offset: Offset(0,10))
];
List<Map> drawerItem=[
  {'icon':Icons.mail,'title':'Donation'},

  {'icon':Icons.favorite,'title':'Faviorites'},
  {'icon':Icons.mail,'title':'Donation'},

];

List<Map> categories=[
  {'name':'Cats','iconPath':'images/cat.png'},
  {'name':'Dog','iconPath':'images/dog.png'},
  {'name':'Horse','iconPath':'images/horse.png'},
  {'name':'Parrot','iconPath':'images/parrot.png'},
  {'name':'Rabbit','iconPath':'images/rabbit.png'},

];