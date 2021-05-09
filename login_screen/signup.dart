import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  signup({Key key}) : super(key: key);

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: //Padding(
              //padding: EdgeInsets.all(10),
              ListView(
        children: <Widget>[
          Image.asset('images/image1.jpeg'),
          Container(
              alignment: Alignment.center,
              //padding: EdgeInsets.all(10),
              child: Text(
                'SIGN UP',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              )),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                suffixIcon: new Icon(Icons.email),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                suffixIcon: new Icon(Icons.keyboard_hide),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Re-type Password',
                suffixIcon: new Icon(Icons.visibility_off),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: RaisedButton(
                textColor: Colors.black,
                color: Colors.green,
                child: Text(
                  'SIGN IN',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  print(nameController.text);
                  print(passwordController.text);
                },
              )),
          Container(
              child: Row(
            children: <Widget>[
              Text(
                'Already have an account?',
              ),
              FlatButton(
                textColor: Colors.green,
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ))
        ],
      )),
      //));
    );
  }
}
