import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// this is the main file.
void main() {
  runApp(contact());
}

class contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Contact Us",
            style: TextStyle(color: Colors.orange),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Center(
                child: Image.asset(
              'images/contact.jpg',
              height: 250,
            )),
            SizedBox(height: 40,),
            Text(
              'If you need help \n feel free to contact us',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Colors.grey[800]),
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 20,
                        ),
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.alternate_email,color: Colors.orange,size: 50,),
                        Text('Write to us'),
                        Text('help@gmail.com'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 20,
                        ),
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.help_outline, color: Colors.orange,size: 46,),
                        Text('FAQS'),
                        Text('Frequently asked questions',textAlign: TextAlign.center,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 20,
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.phone,color: Colors.orange,size: 50,),
                            Text('phone number'),
                            Text('+1234567890'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 20,
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.location_city,color: Colors.orange,size: 50,),
                            Text('Address'),
                            Text('Gundlapochampally'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
            SizedBox(height: 15,),
            Text('Copyright . 2020 SagarKumar',style: TextStyle(color: Colors.orange),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('All rights reserved',style: TextStyle(color: Colors.orange),),
            ),
              ],
            ),
        ),
      );
  }
}
