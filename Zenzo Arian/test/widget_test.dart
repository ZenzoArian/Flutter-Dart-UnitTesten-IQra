// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:naviagtion_unit_testen/main.dart';

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

void main() {
  test('Counter amountBack should be at 100', () {
    var amountBack = 100;
    goBackTextAdd() {
      var goBackText = "I have told you " +
          amountBack.toString() +
          " times already. Go back!";
      return goBackText;
    }

    final secondRoute = SecondRoute();

    secondRoute.goBackTextAdd();

    expect(secondRoute.amountBack, 100);
  });
}
