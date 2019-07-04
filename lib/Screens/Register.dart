import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Home.dart';


class _RegisterScreenState extends State<RegisterScreen> {

  final _formKey = GlobalKey<FormState>();

  isIdRegistered(String id) {

    return Firestore.instance
        .collection('user')
        .where('cedula', isEqualTo: id)
        .snapshots().listen(
        (data) => print(data)
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrate'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Visibility(
              visible: !widget.isUser,
              maintainSize: false,
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Nombre:'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Ingresa algo de texto';
                  }
                  widget.name = value;
                },
            )
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Cedula:'),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
               /*
                QuerySnapshot ids = isIdRegistered('1001366572');
                if (ids.documents.isNotEmpty) {
                  return 'IDS FOUND';
                } else {
                  return 'IDS NOT FOUND';
                }*/
                if (value.isEmpty) {
                  return 'Ingresa algo de texto';
                }

                widget.cedula = value;
              },
            ),
            Center(
              child: RaisedButton(
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formKey.currentState.validate() && widget.cedula != '') {

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  }
                },
                child: Text('Entrar'),
              ),
            ),
          ],
        ),
      )
    )
    );
  }
  
}

class RegisterScreen extends StatefulWidget {

  RegisterScreen({Key key, this.isUser}) : super(key: key);

  final bool isUser;
  String name = '';
  String cedula = '';
  String celular = '';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}