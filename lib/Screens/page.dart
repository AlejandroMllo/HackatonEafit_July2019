import 'package:flutter/material.dart';

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  widget.pageName,
                  textAlign: TextAlign.justify,
                  style: new TextStyle(fontSize: 25.0),
                ),
                const SizedBox(height: 10),
                ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: widget.parag.length,
                    itemBuilder: (context, index) {
                      return ListView(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: <Widget>[
                          Text(
                            widget.parag[index],
                            textAlign: TextAlign.justify,
                            style: new TextStyle(fontSize: 15.0),
                          ),
                          const SizedBox(height: 10),
                        ],
                      );
                    })
              ],
            )));
  }
}

class Page extends StatefulWidget {
  String pageName;
  String parag;

  Page({Key key, @required this.pageName, @required this.parag})
      : super(key: key);

  @override
  _PageState createState() => _PageState();
}
