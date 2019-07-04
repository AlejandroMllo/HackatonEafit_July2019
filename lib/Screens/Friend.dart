import 'package:flutter/material.dart';
import 'dart:math';

class _FriendScreenState extends State<FriendScreen>{

  var random = new Random();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Amigos Seguros'),
      ),
      body: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("\n\nLos siguientes amigos están seguros: ",
                  style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              const SizedBox(height: 30),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: widget.list.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        title: Text('${widget.list[index]}'),
                        subtitle: Text('Hace ${random.nextInt(100)} minutos'),
                    );
                  }),
            ],
          )
    );
  }
}

class FriendScreen extends StatefulWidget {
  List<String> list;
  FriendScreen({Key key, @required this.list}) : super(key: key);

  @override
  _FriendScreenState createState() => _FriendScreenState();
}