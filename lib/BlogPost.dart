import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'globals.dart';

import 'Menu.dart';

class BlogPost extends StatelessWidget {
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
                        flex: 1,
                        child: Container(),
                      )
                    ],
                  ),
                  Expanded(
                    flex: 15,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          top: 20,
                          child: Container(
                            decoration: greyBoxDec,
                            child: Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: FittedBox(
                                        child: Text(
                                          'What is software anyways?',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 102, 252, 241),
                                              fontFamily: 'Monoton'),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Expanded(
                                      flex: 5,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Image.network(
                                            'assets/img/maxresdefault-3-628x420.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 30),
                                    Expanded(
                                      flex: 10,
                                      child:
                                      Text(
                                " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam placerat nisi sit amet turpis finibus, nec ornare tellus venenatis. Cras sit amet nisl sem. Nullam vel finibus turpis. Praesent bibendum odio lectus, eget scelerisque nisi tincidunt quis. Ut facilisis magna ut imperdiet aliquet. Proin consequat massa sollicitudin est tincidunt sollicitudin. Vestibulum id imperdiet tortor. Nunc accumsan tellus ornare metus bibendum, ut consequat libero feugiat. Sed non risus eleifend, imperdiet turpis eu, suscipit felis. Cras a lorem rutrum, suscipit velit vitae, dignissim nisl. Suspendisse potenti. Suspendisse varius ornare mauris, ut ullamcorper enim egestas vitae. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ac venenatis erat.",
                                style: whiteTextStyle,
                              ),
                                      )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            left: 20,
                            height: 40,
                            child: Container(
                              decoration: greyBoxDec,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Armory3D",
                                  style: whiteTextStyle,
                                ),
                              ),
                            ))
                      ],
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
