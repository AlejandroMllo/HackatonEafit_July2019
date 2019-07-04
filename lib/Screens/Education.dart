import 'package:flutter/material.dart';

class _LearnScreenState extends State<LearnScreen> {

  var list= ['Modulos', 'Retos', 'Paso a Paso'];

  @override
  Widget build(BuildContext context) {

    return // Scaffold(
      // appBar: AppBar(
      //  title: Text('Aprende'),
      // ),
      //  body:
      ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${list[index]}'),
          );
        },
      );
    // );
  }

}

class LearnScreen extends StatefulWidget {
  LearnScreen({Key key, this.isUser}) : super(key: key);
  //var iconos = [Icons.lightbulb_outline, Icons.group, Icons.help_outline];
  final bool isUser;

  @override
  _LearnScreenState createState() => _LearnScreenState();
}