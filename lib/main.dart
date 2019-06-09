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
    return Container(
        child: Row(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Menu(),
            Expanded(
                          child: MaterialApp(
                title: 'Flutter Demo',
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                  primaryColor: Color.fromARGB(255, 102, 252, 241),
                ),
                initialRoute: '/',
                navigatorKey: navigatorKey,
                onGenerateRoute: (RouteSettings settings){
                  switch (settings.name){
                    case '/':
                      return MaterialPageRoute(
                      builder: (_) => HomePage(), settings: settings);
                    case '/youtube':
                      return MaterialPageRoute(
                      builder: (_) => YouTube(), settings: settings);
                    case '/contact':
                      return MaterialPageRoute(
                      builder: (_) => Contact(), settings: settings);
                    case '/about':
                      return MaterialPageRoute(
                      builder: (_) => AboutMe(), settings: settings);
                                          case '/skills':
                      return MaterialPageRoute(
                      builder: (_) => Skills(), settings: settings);
                                          case '/blogpost':
                      return MaterialPageRoute(
                      builder: (_) => BlogPost(), settings: settings);
                  }
                }
                // routes: {
                //   '/': (context) => HomePage(),
                //   '/about': (context) => AboutMe(),
                //   '/youtube': (context) => YouTube(),
                //   '/contact': (context) => Contact(),
                // }
              ),
            ),
          ],
        ),
    );
  }
}

class Youtube {
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 21, 30, 41),
        child: Stack(
          children: <Widget>[
            Positioned(
                          child: Navigator(key: navigatorKey,initialRoute: '/', onGenerateRoute: (RouteSettings settings) {
                  return MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) {
        return HomePage();
      } 
    );
              },),
            ),
            Menu(),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
