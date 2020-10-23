import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
          child: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 70,
            padding: const EdgeInsets.all(8),
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue[400],
              child: Text('Open route'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
            ),
          ),
          Container(
            height: 80,
            padding: const EdgeInsets.all(8),
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue[300],
              child: Text('Open route'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
            ),
          ),
          Container(
            height: 90,
            padding: const EdgeInsets.all(8),
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue[200],
              child: Text('Open route'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
            ),
          ),
          Container(
            height: 100,
            padding: const EdgeInsets.all(8),
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue[100],
              child: Text('Open route'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}

class SecondRoute extends StatelessWidget {
  var amountBack = 100;
  goBackTextAdd() {
    var goBackText =
        "I have told you " + amountBack.toString() + " times already. Go back!";
    return goBackText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(goBackTextAdd()),
        ),
      ),
    );
  }
}
