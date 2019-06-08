import 'package:flutter_web/material.dart';

class Test extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
                "K",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    color: Color.fromARGB(255, 102, 252, 241),
                    fontFamily: 'Monoton',
                    fontSize: 35),
              ),

    );
  }

}