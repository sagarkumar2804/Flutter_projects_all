import 'package:flutter/material.dart';
import 'signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
              padding: EdgeInsets.all(10),
              child: ListView(
                children: <Widget>[
                  Image.asset('images/image1.jpeg'),
                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      )),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        suffixIcon: new Icon(Icons.email_rounded),
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
                        suffixIcon: new Icon(Icons.visibility_off_rounded),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      //forgot password screen
                    },
                    textColor: Colors.black,
                    child: Text('Forgot Password?'),
                  ),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: RaisedButton(
                        textColor: Colors.black,
                        color: Colors.green,
                        child: Text(
                          'Login',
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
                        'Does not have account?',
                      ),
                      FlatButton(
                        textColor: Colors.green,
                        child: Text(
                          'Sign in',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => signup()));
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ))
                ],
              )),
        ));
  }
}
