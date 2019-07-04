import 'package:flutter/material.dart';
import 'Reward.dart';


class QuestionMain extends StatelessWidget {
  static const String _title = 'Preguntas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_title)),
        body: Question(
          query:["De los siguientes eventos, seleccione aquel que no sea un desastre:", "Responda verdadero o falso: Si hay un río que crece en época de lluvias, pero no hay casas en las orillas de este, se presenta un caso de amenaza", "Como ciudadano, que acciones llevo a cabo para actuar acorde a la GRD?","Qué es movimiento en masa?","En las laderas occidental y oriental del valle, qué desastre será más probable?"],
          ans: [["Sismo", "Deslizamiento", "Incendio Forestal", "Accidente de tránsito"],["Verdadero", "Falso"],["Planifico, con mi familia, lugares de encuentro en caso de emergencia", "No preparo botiquines de salud ", "Ignoro las advertencias y recomendaciones de los socorristas en los momentos del desastre", "Hago caso omiso de las posibilidades de desastre."],["Cuando ocurre un incendio en una zona forestal","Cuando tiembla la tierra","Cuando hay una caída de piedras y tierra de una montaña por la gravedad"],["Incendio forestal", "Movimiento en masa","Inundación"]],
          correct: [3, 1, 0, 2, 1],
        ),
    );
  }
}

class _QuestionState extends State<Question> {

  int qnum=0;
  void _showDialog(String msg) {

    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text(
              "Respuesta: ${widget.ans[qnum-1][widget.correct[qnum-1]]}"),
          content: new Text(msg),
          actions: <Widget>[

            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Cerrar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );

    setState(() {
      if(qnum>=widget.query.length) {
        qnum = widget.query.length-1;
      }
    });
  }

  void check_ans(int index) {

    setState(() {
      if(qnum <= widget.query.length-1){
        String msg ="Incorrecto! Su puntaje es ${widget.score}";
        if (index==widget.correct[qnum]){
          widget.score++;
          msg = "Correcto! Su puntaje es ${widget.score}";
        }
        _showDialog(msg);
        qnum++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    if(qnum>=widget.query.length) {
      if(widget.score >= widget.query.length) {
      return Reward(
        promoName: "Tiquete de metro",
        promoDesc: "Reclama un tiquete de metro gratis!",
        promoCode: "Utiliza el código c4n0_3s_g4y",
        success: true,
      );
      }else {
        return Reward(
          success: false,
        );
      }
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(widget.query[qnum],
              textAlign: TextAlign.center,
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),),
            const SizedBox(height: 30),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: widget.ans[qnum].length,
                itemBuilder: (context, index) {
                  return RaisedButton(
                    onPressed: () => check_ans(index),
                    child: Text("${widget.ans[qnum][index]}", style: TextStyle(fontSize: 20)),
                  );
                }
            ),
          ],
        )
      )
    );
  }
}

class Question extends StatefulWidget {

  final List<String> query;
  final List<List<String>> ans;
  final List <int> correct;
  int score=0;

  Question({Key key, @required this.query, @required this.ans, @required this.correct }): super(key: key);

  @override
  _QuestionState createState() => _QuestionState();

}