import 'package:flutter/material.dart';
// import 'package:flutter/semantics.dart';

import './question.dart';
import './answer.dart';

// void main(){
//   runApp(MyApp());
// }

//Arrow functions are functions that only has one expression. The function will also return
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  //createState() must be overridden
  //createState() must return a State object, of type <StatefulWidget>
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// State is a generic type, so it must state that it belongs to the MyApp class
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  //Override is a decorator, provided by flutter
  //build() must be overridden for StatelessWidget
  @override
  Widget build(BuildContext context) {
    //context, of type BuidContext, is provided by flutter
    // return MaterialApp(home: Text('Hello!'),); //build() returns a Widget. MaterialApp() is a widget, which has a Text widget that says 'Hello!'

//Create a map of questions
    var questions = [
      {
        'questionText': 'What\'s your favourite colour?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'Who\'s your favourite instructor?',
        'answers': ['Max', 'Mike', 'Jeff', 'Ryan'],
      },
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First App')), //The app bar
      body: Column(
        children: <Widget>[
          Question(questions.elementAt(_questionIndex)['questionText'] //Access the value of the key 'questionText' in map
          ), 
          //appending spread (...) to the list, pulls out the list items, and adds them to the surrounding list
          ...(questions[_questionIndex]['answers'] as List<String>).map((answer) { //.map() executes a function for each value in the list
            return Answer(_answerQuestion, answer);//Return a new Answer widget, passing in the callback and the answer to the question
          }).toList() //Generates a list
        ],
      ),
    ));
  }
}
