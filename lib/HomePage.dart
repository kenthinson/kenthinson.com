import 'package:flutter_web/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
              body: Container(
                constraints: BoxConstraints(minWidth: 100000000),
          color: Color.fromARGB(2255, 21, 30, 41),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[
            Container(
              constraints: BoxConstraints(minWidth: 700,minHeight: 400),
              child: FittedBox(
                      child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Hi,",
                                style: TextStyle(color: Color.fromARGB(255, 102, 252, 241), fontFamily: 'OverpassMono'),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "I'm ",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 102, 252, 241), fontFamily: 'OverpassMono'),
                                  ),
                                  Text(
                                "Kent,",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 102, 252, 241), fontFamily: 'Monoton'),
                              ),
                                ],
                              ),
                              Text(
                                "a Software Developer.",
                                style: TextStyle(color: Color.fromARGB(255, 102, 252, 241),fontFamily: 'OverpassMono'),
                              ),
                            ],
                          )))
            )
          ],),
        ),
      );
  }
}