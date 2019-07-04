import 'package:flutter/material.dart';
import 'EPdespues.dart';



class EPduranteMain extends StatelessWidget {
  static const String _title = 'Durante';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: EPdurante(),
      );
  }
}

class _EPduranteState extends State<EPdurante> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Durante'),
        ),
        body: Column(
          children: [
            Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                              '\nDurante el desastre, la prioridad debe ser asegurarse y asegurar a los miembros de su familia. Esto puede traducirse en diferentes acciones de acuerdo al evento.\nIdentifique y escriba lugares seguros dentro de su vivienda y por fuera de esta. Estos lugares deben conocerse por todo el grupo familiar\n'),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Lugares seguros'),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }

                              widget.safe_spots = value;
                            },
                          ),
                        ],
                      ),
                    )
                )
            ),
        RaisedButton(
          child: Text('Siguiente'),
          onPressed: () {
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => EPdespuesMain()),
            );
          }
    )
          ]
        )
    );
  }
}

class EPdurante extends StatefulWidget {
  EPdurante({Key key}) : super(key: key);

  String safe_spots = '';

  @override
  _EPduranteState createState() => _EPduranteState();
}
