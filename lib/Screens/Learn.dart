import 'package:flutter/material.dart';
import 'Question.dart';
import 'lesson.dart';
import 'Character.dart';
import 'EPintro.dart';


import 'lesson.dart';
import 'Question.dart';


var list = [
  ['Introducción a la Gestión del Riesgo y Desastres', LessonMain()]
  , ['Como actuar en caso de Incendio', LessonMain() ]
  , ['QUIZ: Introducción a la Gestión del Riesgo y Desastres', QuestionMain()]
  , ['QUIZ: Como actuar en caso de Incedio', QuestionMain() ]
  , ['RETO: Crea tu Plan de Emergencia', EPintroMain()]
  , ['RETO: Crea tu Caracterización', CharacterMain()]
];


class _LearnScreenState extends State<LearnScreen> {
  @override
  Widget build(BuildContext context) {

    return // Scaffold(
      // appBar: AppBar(
      //  title: Text('Aprende'),
      //
    //  body:
    ListView.builder(
        itemCount: widget.elems.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              StatelessWidget tileWidget;
              tileWidget = widget.elems[index][1];
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => tileWidget),
              );
            },
            title: Text(
              '${widget.elems[index][0]}', textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold),),
          );
        },
      );
  }

}

class LearnScreen extends StatefulWidget {

  List<List> elems = list;

  LearnScreen({Key key, /* @required this.elems,*/ this.isUser}) : super(key: key);
  final bool isUser;

  @override
  _LearnScreenState createState() => _LearnScreenState();
}