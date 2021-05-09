import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(diamond());
}
class diamond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.blueGrey,
         appBar: AppBar(
           title: Text('Diamond App'),
           backgroundColor: Colors.blueGrey[900],
         ),
         body:Column(
            children: <Widget>[
              Center(
                  child:Image(
              image:AssetImage('images/diamond.png'),
               ),
              ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             height: 100,
             width: 400,
             decoration: BoxDecoration(
             color: Colors.white,
             boxShadow: [
               BoxShadow(
                  color: Colors.grey,
                   blurRadius: 20,
               )
               ],
               ),
               child:Column(

                 children: <Widget>[
                   Icon(Icons.alternate_email, color: Colors.orange,size:50),
                   Text('If you want to buy diamond email us ',textAlign: TextAlign.center,),
                   Text('buy@gmail.com',textAlign: TextAlign.center,),
                 ],
               ),
             ),
           ),
    ],
         ),
         ),
       );
  }
}

