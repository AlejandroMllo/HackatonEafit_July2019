import 'package:flutter/material.dart';

class _StepsScreenState extends State<StepsScreen> {

  var steps = [
      '\n\nPASOS A SEGUIR DURANTE UN MOVIMIENTO EN MASA (Deslizamiento de tierra)'
    , '-- Si estas es un edificio:'
    , '   - Evacúa para garantizar tu seguridad, si no alcanzas, ubícate debajo de una mesa o al lado de un muro fuerte.'
    , '   - Aléjate de las ventanas y puertas con vidrio.'
    , '   - No utilices el ascensor.'
      '\n'
    , '-- Si estas en un espacio abierto:'
    , '   - Aléjate de los edificios, árboles, postes y líneas telefónicas.'
    , ' - No recorras una calle donde haya caído un deslizamiento recientemente.'
    , ' - No te dirijas hacia el deslizamiento.'
    , ' - No entres a las casas vecinas al deslizamiento antes de que se evalúen las condiciones de seguridad.'
    , '\n'
  ];

  @override
  Widget build(BuildContext context) {

    return
      ListView.builder(
        itemCount: steps.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${steps[index]}', textAlign: TextAlign.left, style: TextStyle(fontFamily : 'Arial Verdana')),
          );
        },
      );
  }

}

class StepsScreen extends StatefulWidget {
  StepsScreen({Key key}) : super(key: key);

  @override
  _StepsScreenState createState() => _StepsScreenState();
}