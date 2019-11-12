import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

//Arrow functions are functions that only has one expression. The function will also return
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //Override is a decorator, provided by flutter
  //build() must be overridden for StatelessWidget
  @override
  Widget build(BuildContext context) {
    //context, of type BuidContext, is provided by flutter
    // return MaterialApp(home: Text('Hello!'),); //build() returns a Widget. MaterialApp() is a widget, which has a Text widget that says 'Hello!'
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First App')), //The app bar
      body: Column(
        children: <Widget>[
          Text('The Question!'),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: null,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: null,
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: null,
          ),
        ],
      ),
    ));
  }
}
