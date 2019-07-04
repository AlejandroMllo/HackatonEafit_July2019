import 'package:flutter/material.dart';
import 'EPantes.dart';

class EPintroMain extends StatelessWidget {
  static const String _title = 'Plan de emergencia';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: EPintro(),
      );
  }
}

class _EPintroState extends State<EPintro> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Plan de Emergencia'),
        ),
        body: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text ( '\nPara la apropiación de un plan de emergencia, es necesario que identifique 3 etapas primordiales en la prevención de desastre: antes, durante y después. Estas etapas clasificarán las acciones a implementar en este plan de emergencia.\n'),
                  RaisedButton(
                      child: Text('Siguiente'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(builder: (context) => EPantesMain()),
                        );
                      }
                  )

                ],
              ),
            )
        )
    );
  }

}
class EPintro extends StatefulWidget {
  EPintro({Key key}) : super(key: key);
  @override
  _EPintroState createState() => _EPintroState();
}