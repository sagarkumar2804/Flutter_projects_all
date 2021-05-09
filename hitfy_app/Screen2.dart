import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hitfy_app/HomeScreen.dart';
import 'configuration.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:<Widget>[
          Positioned.fill(child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.blueGrey,
                ),
              ),

              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          )),
          Container(
            margin: EdgeInsets.only(top:20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.redAccent,) ,onPressed: (){
                    Navigator.pop( context);
                  },),
                ],
              ),
            ),
          ),
          Container(

            child: Align(
              alignment: Alignment.topCenter,
              child: Hero(
                  tag: 1,
                  child: Image.asset("images/cultural.jpeg")),
            ),
          ),
          Align(
            alignment: Alignment.center,
              child: Container(

                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Center(child: Text('This Club involves Activities of all Cultural Events Happening in Hitam . '
                              + 'By joining this club you will be able explore and prove your talent in the cultural field.',style: TextStyle(color: Colors.lightGreen,fontSize: 20),)),
                        ],
                      ),
                height: 200,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: ListShadow,

                ),
              ),
            ),

          Align(
            alignment: Alignment.bottomCenter,

            child: Container(

              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 150,
              child:Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width:50,

                    child:Icon(Icons.favorite_border,color: Colors.white,),
                    decoration: BoxDecoration(
                      color: primarycolor,
                      borderRadius: BorderRadius.circular(20),

                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      height: 50,
                      width:50,
                      child:
                      Center(child: Text("Register",style:TextStyle(color: Colors.white),)),
                      decoration: BoxDecoration(
                        color: primarycolor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
              ),

            ),
          ),

        ],
      ),
    );
  }
}
