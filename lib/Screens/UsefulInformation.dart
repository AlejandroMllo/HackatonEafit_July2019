import 'package:flutter/material.dart';


class UsefulInfo extends StatelessWidget {
  final List<List<String>> items;
  UsefulInfo({Key key, @required this.items}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text("${items[index][0]}"),
              subtitle: Text("${items[index][1]}")
          );
        }
    );
  }
}

class _UsefulInformationScreenState extends State<UsefulInformationScreen> {

  var list= ['Modulos', 'Retos', 'Paso a Paso'];

  static const String _title = 'Información Útil';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_title)),
        body: UsefulInfo(
            items: [
              ['Puesto de Salud', 'La enfermería se ha ubicado al lado izquierdo de la tienda de Juan.'],
              ['Recepción de Ayudas', 'Las personas con donaciones se pueden dirigir a la calle 10 #30-30 para hacer la entrega.'],
              ['Entrega de Kits', 'Los afectados pueden acercarse al Cuerpo de Bomberos para reclamar un kit de ayuda.']
            ]
        ),
    );
  }

}

class UsefulInformationScreen extends StatefulWidget {
  UsefulInformationScreen({Key key}) : super(key: key);

  @override
  _UsefulInformationScreenState createState() => _UsefulInformationScreenState();
}