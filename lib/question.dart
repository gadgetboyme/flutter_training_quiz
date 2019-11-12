import 'package:flutter/material.dart';

class Question extends StatelessWidget {
//Stateless classes are marked as immutable, however the String questionText must be marked as final, as it could be chagned otherwise.
//Because this is a stateless widget, changing the state inside it will not do anything, so the questionText variable should be marked as final.
//This will only be changed by the constructor on initialisation.
  final String questionText;

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
