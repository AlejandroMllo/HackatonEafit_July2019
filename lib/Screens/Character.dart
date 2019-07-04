import 'package:flutter/material.dart';

class CharacterMain extends StatelessWidget {
  static const String _title = 'Caracterización';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Character(),
      );

  }
}

class _CharacterState extends State<Character> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Caracterización'),
        ),
        body: Form(
            key: _formKey,

            child: SingleChildScrollView(

                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Nombre:'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }

                          widget.name = value;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Edad:'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }

                          widget.age = value;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Género:'),
                        obscureText: true,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }

                          widget.gender = value;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Documento de identidad:'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }

                          widget.id = value;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Teléfono:'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }

                          widget.cellphone = value;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Teléfono de contacto:'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }

                          widget.contactcellphone = value;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Correo de contacto:'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }

                          widget.contactemail = value;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Dirección:'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }

                          widget.adress = value;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Tipo de sangre:'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }

                          widget.bloodtype = value;
                        },
                      ),
                      Text(
                          '\nTiene usted alguna situación especial a nivel de salud (alergias, discapacidad, dependencia a fármacos, etc): \n'),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Situación especial:'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }

                          widget.special = value;
                        },
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 16.0),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.pop(context, true);
                            },
                            child: Text('Finalizar'),
                          )
                      ),
                    ],
                  ),

                )
            )
        )
    );
  }

}

class Character extends StatefulWidget {
  Character({Key key}) : super(key: key);

  String name = '';
  String age = '';
  String gender = '';
  String id = '';
  String cellphone = '';
  String contactcellphone = '';
  String contactemail = '';
  String adress = '';
  String bloodtype = '';
  String special = '';

  @override
  _CharacterState createState() => _CharacterState();
}