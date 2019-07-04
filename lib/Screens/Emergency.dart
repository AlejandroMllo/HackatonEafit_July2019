import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import "UsefulInformation.dart";
import 'Friend.dart';

class _EmergencyScreenState extends State<EmergencyScreen> {

  List<String> safeFriends = [
      'Homero Simpson'
    , 'Elon Musk'
    , 'Mike Wazowski'
  ];

  @override
  Widget build(BuildContext context) {

    return
    Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    // return object of type Dialog
                    return AlertDialog(
                      title: new Text(
                        "Tus amigos ya saben que estás bien!",
                        textAlign: TextAlign.center,
                      ),
                      actions: <Widget>[
                        // usually buttons at the bottom of the dialog
                        new FlatButton(
                          child: new Text("Ok"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Estoy Seguro', style: TextStyle(fontSize: 20)),
            ),
            const SizedBox(height: 30),
            RaisedButton(
              onPressed: () => launch("tel://123"),
              child: Text('Solicitar Ayuda', style: TextStyle(fontSize: 20)),
            ),
            const SizedBox(height: 30),
            Row (
                mainAxisSize: MainAxisSize.min,
                children: <Widget> [
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FriendScreen(list: safeFriends,)),
                      );
                    },
                    child: Text('Amigos', style: TextStyle(fontSize: 20)),
                  ),
                  const SizedBox(width: 30),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UsefulInformationScreen()),
                      );
                    },
                    child: Text('Información Útil', style: TextStyle(fontSize: 20)),
                  ),
                ]
            ),
            const SizedBox(height: 30),
          ],
        ),
      );
  }

}

class EmergencyScreen extends StatefulWidget {
  EmergencyScreen({Key key}) : super(key: key);

  @override
  _EmergencyScreenState createState() => _EmergencyScreenState();
}

