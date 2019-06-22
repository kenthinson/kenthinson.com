import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

Scaffold pageTemplate(String heading, Widget body) {
  buildPage() {
    List<Widget> newWidgets = [];
    if (heading != '') {
      newWidgets.add(Container(
        constraints: BoxConstraints(minWidth: 500, maxHeight: 100),
        child: FittedBox(
        alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 2.0),
              child: Text(
          heading,
          style: TextStyle(
                color: Color.fromARGB(255, 102, 252, 241), fontFamily: 'Monoton'),
        ),
            )),
      ));
    }
    newWidgets.add(Container(
      constraints: BoxConstraints(minWidth: 500),
      child: body,
    ));
    return newWidgets;
  }

  return Scaffold(
    body: Container(
      constraints: BoxConstraints(minWidth: 100000000),
      color: Color.fromARGB(2255, 21, 30, 41),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              constraints:
                  BoxConstraints(minHeight: 400, minWidth: 100, maxWidth: 700),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: buildPage()),
            )
          ],
        ),
      ),
    ),
  );
}
