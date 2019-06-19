import 'package:flutter_web/cupertino.dart';

import 'About.dart';
import 'BlogPost.dart';
import 'Contact.dart';
import 'HomePage.dart';
import 'Menu.dart';
import 'YouTube.dart';

import 'package:flutter_web/material.dart';

import 'skills.dart';

final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return LayoutBuilder(
    builder: (context, constraints) {
      if(constraints.maxWidth > 800){
        return Row(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Menu(true),
            Expanded(child: Container(color: Colors.yellow,)),
            Expanded(child: Container(color: Colors.teal,))
          ],
        );
      }else if(constraints.maxWidth > 500){
        return Column(children: <Widget>[
          Menu(false),
          Expanded(child: Container(color: Colors.teal,)),
        ],textDirection: TextDirection.ltr,);
      }else{
        return Column(children: <Widget>[
          Expanded(child: Container(color: Colors.teal,)),
          Menu(false),
        ],textDirection: TextDirection.ltr,);
      }
    },
);
        // child: Row(
        //   textDirection: TextDirection.ltr,
        //   children: <Widget>[
        //     Menu(),
        //     Expanded(
        //                   child: MaterialApp(
        //         title: 'Flutter Demo',
        //         theme: ThemeData(
        //           primarySwatch: Colors.blue,
        //           primaryColor: Color.fromARGB(255, 102, 252, 241),
        //         ),
        //         initialRoute: '/',
        //         navigatorKey: navigatorKey,
        //         onGenerateRoute: (RouteSettings settings){
        //           switch (settings.name){
        //             case '/':
        //               return MaterialPageRoute(
        //               builder: (_) => HomePage(), settings: settings);
        //             case '/youtube':
        //               return MaterialPageRoute(
        //               builder: (_) => YouTube(), settings: settings);
        //             case '/contact':
        //               return MaterialPageRoute(
        //               builder: (_) => Contact(), settings: settings);
        //             case '/about':
        //               return MaterialPageRoute(
        //               builder: (_) => AboutMe(), settings: settings);
        //                                   case '/skills':
        //               return MaterialPageRoute(
        //               builder: (_) => Skills(), settings: settings);
        //                                   case '/blogpost':
        //               return MaterialPageRoute(
        //               builder: (_) => BlogPost(), settings: settings);
        //           }
        //         }
        //       ),
        //     ),
        //   ],
        // ),
  }
}
