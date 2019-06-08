import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

import 'Menu.dart';


class YouTube extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
              body: Container(
        color: Color.fromARGB(2255, 21, 30, 41),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(//color: Colors.green
                    ),
              ),
              Expanded(
                flex: 10,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                          //color: Colors.yellow,
                          ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            //color: Colors.teal,
                            child: FittedBox(
                                child: Text(
                              'YouTube',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 102, 252, 241),
                                  fontFamily: 'Monoton'),
                            )),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(),
                        )
                      ],
                    ),
                    Expanded(
                      flex: 15,
                      child: Container(
                        //color: Colors.teal,
                        child: Scrollbar(
                          child: GridView.count(
                            childAspectRatio: 1.2,
                            // Create a grid with 2 columns. If you change the scrollDirection to
                            // horizontal, this would produce 2 rows.
                            crossAxisCount: 2,
                            // Generate 100 Widgets that display their index in the List
                            children: List.generate(100, (index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  //color: Colors.teal,
                                  child: Column(
                                    children: <Widget>[
                                      Image.network(
                                        'assets/img/maxresdefault-3-628x420.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                      Text('data',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontFamily: 'OverpassMono')),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                          //color: Colors.yellow,
                          ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 10,
                child: Container(//color: Colors.green
                    ),
              ),
            ],
    ),
        ),
      );
  }
}
