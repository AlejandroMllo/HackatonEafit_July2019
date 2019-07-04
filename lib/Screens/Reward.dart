import 'package:flutter/material.dart';

/// This Widget is the main application widget.
class RewardMain extends StatelessWidget {
  static const String _title = 'Recompensa';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_title)),
        body: Reward(
          promoName: "Tiquete de metro",
          promoDesc: "Reclama un tiquete de metro gratis!",
          promoCode: "Utiliza el código c4n0_3s_g4y",
          success: true,
        ),
    );
  }
}

class _RewardState extends State<Reward> {
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
    
    if (widget.success) {
      return Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: <Widget>[
              Text(
                "Felicidades, obtuviste un beneficio:",
                textAlign: TextAlign.center,
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
              Text(
                widget.promoName,
                textAlign: TextAlign.center,
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              Text(
                widget.promoDesc,
                textAlign: TextAlign.center,
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              const SizedBox(height: 10),
              Text(
                "Para reclamarlo:",
                textAlign: TextAlign.center,
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              const SizedBox(height: 10),
              Text(
                widget.promoCode,
                textAlign: TextAlign.center,
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
              goHomeButton
            ],
          )
        ],
      ));
    } else {
      return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Lo sentimos, no recibio ningún beneficio",
                textAlign: TextAlign.center,
                style:
                new TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
              goHomeButton
            ],
          )
      );


    }
  }
}

class Reward extends StatefulWidget {
  String promoName = '';
  String promoDesc = '';
  String promoCode = ''; //o url o lo que sea para reclamarlo
  bool success = true;

  Reward(
      {Key key,
      this.success, this.promoName, this.promoDesc, this.promoCode})
      : super(key: key);

  @override
  _RewardState createState() => _RewardState();
}
