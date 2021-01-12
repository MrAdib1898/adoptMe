import 'package:flutter/material.dart';
import 'dash.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.green,
        appBar: new AppBar(
          title: new Text("Login Page"),
        ),
        body: Container(
          width: double.infinity,
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [Colors.blue[900], Colors.blue[400]])),
          padding: const EdgeInsets.fromLTRB(50, 100, 50, 0),
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image(
                    image: AssetImage('assets/cd.png'),
                    height: 120.0,
                    width: 100.0,
                  )),
              TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: 'Username',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)))),
              TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)))),
              RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  child: Text('Log In'),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0))),
            ],
          ),
        ));
  }
}
