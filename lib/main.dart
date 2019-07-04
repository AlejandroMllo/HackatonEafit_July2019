import 'package:flutter/material.dart';
import 'Screens/Register.dart';

void main() => runApp(GRDApp());

class GRDApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cultura GRD',
        theme: ThemeData(
          // Define the default brightness and colors.
          primaryColor: Colors.amber,
          accentColor: Colors.cyan[500],

          // Define the default font family.
          fontFamily: 'Arial Verdana',

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            body1: TextStyle(fontSize: 16.0),
          ),
        ),
        home: CulturaGRDHome(title: 'Cultura GRD')
    );
  }

}

class CulturaGRDHome extends StatefulWidget {
  CulturaGRDHome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CulturaGRDHomeState createState() => _CulturaGRDHomeState();
}

class _CulturaGRDHomeState extends State<CulturaGRDHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              child:
              Image.network(
                'https://repositorio.gestiondelriesgo.gov.co/themes/UNGRDv2/images/cliente/logoUNGRD_2018.png',
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RegisterScreen(isUser: false,)),
                );
              },
              child: Text(
                'Registrate',
                style: TextStyle(fontSize: 28),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  // MaterialPageRoute(builder: (context) => LearnScreen()),
                  MaterialPageRoute(
                      builder: (context) => RegisterScreen(isUser: true,)),
                );
              },
              child: Text(
                'Ingresa',
                style: TextStyle(fontSize: 28),
              ),
            )
          ],
        ),
      ),
    );
  }
}


