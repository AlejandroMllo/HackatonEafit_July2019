import 'package:flutter/material.dart';
import "page.dart";


/// This Widget is the main application widget.
class LessonMain extends StatelessWidget {
  static const String _title = 'Lección';

  @override
  Widget build(BuildContext context) {
    var pages = [
      Page(pageName: "Introducción a GRD", parag:
        "En este primero módulo, aprenderemos un poco sobre los conceptos y definiciones más importantes al hablar de la gestión de riesgo de desastres. Las situaciones crítícas pueden ocurrirnos en el momento menos esperado, y, como ciudadanos, tenemos la responsabilidad de actuar con precaución, solidaridad y auto-protección (Ley 1523). "
      ),
      Page(pageName: "Queremos prepararnos para los desastres, pero, qué es un desastre?", parag:
         "Es el resultado desencadenado por eventos naturales o de origen humano no intencionados, que lleva a pérdidas humanas y materiales, y altera las condiciones de funcionamiento de la sociedad.\nPor otra parte, una emergencia es la irrupción de las condiciones de funcionamiento de comunidades específicas por un evento adverso."
      ),
      Page(pageName: "Varios factores inciden en el riego del desastre:", parag:
         "AMENAZA: Peligro latente de que un evento físico se presente y cause daños y pérdidas."
      ),
      Page(pageName: "", parag:
         "EXPOSICIÓN: Situación de las personas, infraestructura, vivienda, medios de vida y otros activos humanos tangibles ubicados en áreas propensas a la amenaza."
      ),
      Page(pageName: "", parag:
         "VULNERABILIDAD: Susceptibilidad o fragilidad que tiene un elemento expuesto de ser afectado en caso de que un evento físico peligroso se presente."
      ),
      Page(pageName: "", parag:
         "RIESGO: es la presencia de los tres factores anteriores al mismo tiempo."
      ),
      Page(pageName: 'GRD', parag:
         "La gestión de riesgos de desastres (GRD) es un asunto de todos, y no solo de las entidades que velan por nuestra seguridad en estos eventos. Como ciudadanos, también debemos actuar conforme a esta gestión."
      ),
      Page(pageName: '', parag:
         "GRD es el proceso social de planeación, ejecución, seguimiento y evaluación de acciones para el conocimiento, manejo y prevención del riesgo."
      ),
      Page(pageName: 'Amenazas', parag:
         "En Medellín existen algunos desastres más frecuentes que otros, estos son movimiento en masa, avenidas torrenciales e inundaciones. Entendamos estos conceptos."
      ),
      Page(pageName: '', parag:
         "En Medellín existen zonas de riesgo que son más propensas a algunos de los desastres previamente mencionados, y por tanto, debemos ser más atentos a estos."
      )
    ];
    return Scaffold(
          appBar: AppBar(title: Text(_title)),
          body: Lesson(
            lessonName: "Llamadas de vida o muerte",
            pages: pages,
          ),
    );
  }
}

class _LessonState extends State<Lesson> {

  @override
  Widget build(BuildContext context) {

    Page currentPage = widget.pages[0];

    return Center(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              currentPage.pageName,
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              currentPage.parag,
              style: TextStyle(fontSize: 20.0),
            ),
            RaisedButton(
              onPressed: () {
                if (widget.pages.length - 1 == 0) {
                  Navigator.pop(context);
                } else {
                  setState(() {
                    widget.pages.removeAt(0);
                    currentPage = widget.pages[0];
                  });
                }
              },
              child: Text('Siguiente', style: TextStyle(fontSize: 20.0),),
            )
          ]
      ),
      )
    );
  }
}

class Lesson extends StatefulWidget {
  String lessonName;
  List<Page> pages;

  Lesson({Key key, @required this.lessonName, @required this.pages})
      : super(key: key);

  @override
  _LessonState createState() => _LessonState();
}
