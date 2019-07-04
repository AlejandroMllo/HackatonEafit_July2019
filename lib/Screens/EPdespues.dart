import 'package:flutter/material.dart';
import 'Home.dart';


class EPdespuesMain extends StatelessWidget {
  static const String _title = 'Después';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EPdespues(),
    );
  }
}

class _EPdespuesState extends State<EPdespues> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Después'),
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
                              '\nDespués del desastre, la prioridad debe ser verificar la situación en la que se encuentra usted, su núcleo familiar, personas cercanas, insumos y las edificaciones a su alrededor, según sea el caso. \nDiríjase al punto de encuentro más cercano. Recuerde que debe ser un espacio abierto, alejado de edificaciones que puedan colapsar y de peligros potenciales.\n'),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Fije dos puntos de encuentro con sus familiares '),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }

                              widget.meet_point = value;
                            },
                          ),
                        ],
                      ),
                    ))),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text('Finalizar'),
            )
          ]
        )
    );
  }
}

class EPdespues extends StatefulWidget {
  EPdespues({Key key}) : super(key: key);

  String meet_point = '';

  @override
  _EPdespuesState createState() => _EPdespuesState();
}
