import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'PageTemplate.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return pageTemplate("About Me", Text(
                      'About Me',
                      style: TextStyle(
                    color: Colors.white,
                      fontFamily: 'OverpassMono'),
                    ));
  }
}
