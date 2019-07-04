import 'package:flutter/material.dart';
import 'EPantes.dart';
import 'EPdespues.dart';
import 'EPdurante.dart';
import 'EPintro.dart';

/// This Widget is the main application widget.
class EplanMain extends StatelessWidget {
  static const String _title = 'Plan de Emergencia';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      body: EPlan(),
    );
  }
}


class _EPlanState extends State<EPlan> {
  @override
  Widget build(BuildContext context) {
    Padding goHomeButton = Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Finalizar'),
        )
    );

    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            goHomeButton
          ],
        )
    );
  }
}

class EPlan extends StatefulWidget {
  EPlan({Key key}) : super(key: key);
  @override
  _EPlanState createState() => _EPlanState();
}
