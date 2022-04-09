import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width:
                      double.infinity), //to make colun align center horizontal
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/aa.jpg'),
              ),
              Text(
                'Ashraf Wzza',
                style: TextStyle(
                  color: Colors.blueGrey.shade900,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'BeauRivage',
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  color: Colors.blueGrey.shade900,
                  fontSize: 25,
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 150.0,
                height: 20.0,
                child: Divider(
                  color: Colors.blueGrey.shade900,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    '0144774114',
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    'ashraf@gmail.com',
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
