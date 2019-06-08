import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';




class Skills extends StatelessWidget {
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
                              'Skills',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 102, 252, 241),
                                  fontFamily: 'Monoton'),
                            )),
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        )
                      ],
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        //color: Colors.teal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam placerat nisi sit amet turpis finibus, nec ornare tellus venenatis. Cras sit amet nisl sem. Nullam vel finibus turpis. Praesent bibendum odio lectus, eget scelerisque nisi tincidunt quis. Ut facilisis magna ut imperdiet aliquet. Proin consequat massa sollicitudin est tincidunt sollicitudin. Vestibulum id imperdiet tortor. Nunc accumsan tellus ornare metus bibendum, ut consequat libero feugiat. Sed non risus eleifend, imperdiet turpis eu, suscipit felis. Cras a lorem rutrum, suscipit velit vitae, dignissim nisl. Suspendisse potenti. Suspendisse varius ornare mauris, ut ullamcorper enim egestas vitae. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ac venenatis erat.",
                                style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'OverpassMono'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
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