import 'package:flutter/material.dart';
import 'EPdurante.dart';


class EPantesMain extends StatelessWidget {
  static const String _title = 'Antes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EPantes(
      ),
    );
  }
}

class _EPantesState extends State<EPantes> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Antes'),
        ),
        body: Form(
            key: _formKey,

            child: SingleChildScrollView(

                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                          '\nNecesitamos analizar los posibles riesgos que presente tu lugar de vivienda.\nLa vulnerabilidad es la susceptibilidad o fragilidad que tiene un elemento expuesto de ser afectado en caso de que un evento físico peligroso se presente. Indique a que situaciones considera usted que su vivienda es vulnerable (selección múltiple):\n'),

                      TextFormField(
                        decoration: InputDecoration(labelText: 'Amenazas:'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }

                          widget.vulnerability = value;
                        },
                      ),
                      Text(
                          '\nDe acuerdo a su respuesta anterior, anote posibles objetos o actividades que pueden ocasionar daños y lesiones en caso de una emergencia (objetos mal posicionados, estanterías elevadas, pipetas….). Procure minimizar esos peligros potenciales :  \n'),

                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Objetos potencialmente peligrosos:'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }

                          widget.danger_objects = value;
                        },
                      ),
                      Text(
                          '\nPrepare una mochila de emergencias, esta mochila debe contener suministros para sobrevivir hasta 72 horas. \nDebe contener: kit mínimo de primeros auxilios, ropa, agua, alimentos no perecederos, documentos importantes (de identidad, etc), linterna, silbato, y medicamentos indispensables para algún miembro del núcleo, en caso de ser necesario.\n '),

                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Donde guarda esta mochila de emergencia?:'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }

                          widget.bag_spot = value;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Tienes mascotas?:'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }

                          widget.pets = value;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'En tu núcleo familiar hay personas con algún tipo de dificultad para movilizarse ?:'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }

                          widget.people_help = value;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Vive en edificio, o en casa a nivel del suelo ?:'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }

                          widget.place_live = value;
                        },
                      ),
                      RaisedButton(
                        child: Text('Siguiente'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(builder: (context) => EPduranteMain()),
                          );
                        }
                      )
                    ],
                  ),

                )
            )
        )
    );
  }

}

class EPantes extends StatefulWidget {
  EPantes({Key key}) : super(key: key);

  String vulnerability = '';
  String danger_objects = '';
  String bag_spot = '';
  String pets = '';
  String people_help = '';
  String place_live = '';

  @override
  _EPantesState createState() => _EPantesState();
}