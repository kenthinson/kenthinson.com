import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'PageTemplate.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return pageTemplate("About Me", Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam placerat nisi sit amet turpis finibus, nec ornare tellus venenatis. Cras sit amet nisl sem. Nullam vel finibus turpis. Praesent bibendum odio lectus, eget scelerisque nisi tincidunt quis. Ut facilisis magna ut imperdiet aliquet. Proin consequat massa sollicitudin est tincidunt sollicitudin. Vestibulum id imperdiet tortor. Nunc accumsan tellus ornare metus bibendum, ut consequat libero feugiat. Sed non risus eleifend, imperdiet turpis eu, suscipit felis. Cras a lorem rutrum, suscipit velit vitae, dignissim nisl. Suspendisse potenti. Suspendisse varius ornare mauris, ut ullamcorper enim egestas vitae. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ac venenatis erat.',
                      style: TextStyle(
                    color: Colors.white,
                      fontFamily: 'OverpassMono'),
                    ));
  }
}
