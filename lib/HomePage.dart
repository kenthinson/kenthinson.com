import 'package:flutter_web/material.dart';
import 'PageTemplate.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return pageTemplate(
        '',
        FittedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Hi,",
                style: TextStyle(
                    color: Color.fromARGB(255, 102, 252, 241),
                    fontFamily: 'OverpassMono'),
              ),
              Row(
                children: <Widget>[
                  Text(
                    "I'm ",
                    style: TextStyle(
                        color: Color.fromARGB(255, 102, 252, 241),
                        fontFamily: 'OverpassMono'),
                  ),
                  Text(
                    "Kent,",
                    style: TextStyle(
                        color: Color.fromARGB(255, 102, 252, 241),
                        fontFamily: 'Monoton'),
                  ),
                ],
              ),
              Text(
                "a Software Developer.",
                style: TextStyle(
                    color: Color.fromARGB(255, 102, 252, 241),
                    fontFamily: 'OverpassMono'),
              ),
            ],
          ),
        ));
  }
}
