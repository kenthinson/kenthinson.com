import 'main.dart';
import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

class Menu extends StatefulWidget {
  Menu(bool vertical) : this.state = _MenuState(vertical);
  final state;
  @override
  _MenuState createState() => state;
}

class _MenuState extends State<Menu> {
  _MenuState(bool vertical) : this.vertical = vertical;
  final bool vertical;
  var _currentPage;

  @override
  Widget build(BuildContext context) {
    if (vertical) {
      return Container(
        color: Color.fromARGB(255, 11, 12, 16),
        width: 60,
        child: Column(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(textDirection: TextDirection.ltr, children: <Widget>[
              SizedBox(height: 10, width: 10,),
                         Text(
                "K",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    color: Color.fromARGB(255, 102, 252, 241),
                    fontFamily: 'Monoton',
                    fontSize: 35),
              ),
              Text(
                'Kent',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    color: Color.fromARGB(255, 102, 252, 241),
                    fontFamily: 'OverpassMono'),
              )
            ],),
            Column(textDirection: TextDirection.ltr, children: pageLinkWidgets(),),
            Column(textDirection: TextDirection.ltr, children: socialLinkWIdgets(),)
          ],
        ),
      );
    } else {
      return Container(
        color: Color.fromARGB(255, 11, 12, 16),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Row(textDirection: TextDirection.ltr, children: <Widget>[
              SizedBox(height: 10, width: 10,),
                         Text(
                "K",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    color: Color.fromARGB(255, 102, 252, 241),
                    fontFamily: 'Monoton',
                    fontSize: 35),
              ),
              SizedBox(width: 32,height: 32,)
            ],),
            Row(textDirection: TextDirection.ltr, children: pageLinkWidgets(),),
            Row(textDirection: TextDirection.ltr, children: socialLinkWIdgets(),)
          ],
        ),
      );
    }
    // return Container(
    //   color: Color.fromARGB(255, 11, 12, 16),
    //   width: 60,
    //   child: Column(
    //     textDirection: TextDirection.ltr,
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: <Widget>[
    //       Column(
    //         textDirection: TextDirection.ltr,
    //         children: <Widget>[
    //           SizedBox(height: 10),
    //           Text(
    //             "K",
    //             textDirection: TextDirection.ltr,
    //             style: TextStyle(
    //                 color: Color.fromARGB(255, 102, 252, 241),
    //                 fontFamily: 'Monoton',
    //                 fontSize: 35),
    //           ),
    //           Text(
    //             'Kent',
    //             textDirection: TextDirection.ltr,
    //             style: TextStyle(
    //                 color: Color.fromARGB(255, 102, 252, 241),
    //                 fontFamily: 'OverpassMono'),
    //           )
    //         ],
    //       ),
    //       Column(
    //         textDirection: TextDirection.ltr,
    //         children: <Widget>[
    //           Listener(
    //             child: SizedBox(
    //               height: 32,
    //               width: 32,
    //               child: Image.network(
    //                 _currentPage == PageSelect.home
    //                     ? "assets/img/home_color.png"
    //                     : "assets/img/home_grey.png",
    //               ),
    //             ),
    //             onPointerDown: (event) {
    //               setState(() {
    //                 _currentPage = PageSelect.home;
    //               });
    //               navigatorKey.currentState.pushReplacementNamed('/');
    //             },
    //             onPointerEnter: (event) {
    //               print('test');
    //             },
    //             onPointerHover: (event) {
    //               print('object');
    //             },
    //           ),
    //           SizedBox(height: 10),
    //           Listener(
    //             child: SizedBox(
    //               height: 32,
    //               width: 32,
    //                               child: Image.network(
    //                 _currentPage == PageSelect.about
    //                     ? "assets/img/profile_color.png"
    //                     : "assets/img/profile_grey.png",
    //               ),
    //             ),
    //             onPointerDown: (event) {
    //               setState(() {
    //                 _currentPage = PageSelect.about;
    //               });
    //               navigatorKey.currentState.pushReplacementNamed('/about');
    //             },
    //           ),
    //           SizedBox(height: 10),
    //           Listener(
    //             child: SizedBox(
    //               width: 32,
    //               height: 32,
    //                               child: Image.network(
    //                 _currentPage == PageSelect.youtube
    //                     ? "assets/img/youtube_color.png"
    //                     : "assets/img/youtube_grey.png",
    //               ),
    //             ),
    //             onPointerDown: (event) {
    //               setState(() {
    //                 _currentPage = PageSelect.youtube;
    //               });
    //               navigatorKey.currentState.pushReplacementNamed('/youtube');
    //             },
    //           ),
    //           SizedBox(height: 10),
    //           Listener(
    //             child: SizedBox(
    //               height: 32,
    //               width: 32,
    //                               child: Image.network(
    //                 _currentPage == PageSelect.skills
    //                     ? "assets/img/hammer_color.png"
    //                     : "assets/img/hammer_grey.png",
    //               ),
    //             ),
    //             onPointerDown: (event) {
    //               setState(() {
    //                 _currentPage = PageSelect.skills;
    //               });
    //               navigatorKey.currentState.pushReplacementNamed('/skills');
    //             },
    //           ),
    //           SizedBox(height: 10),
    //           Listener(
    //             child: SizedBox(
    //               width: 32,
    //               height: 32,
    //                               child: Image.network(
    //                 _currentPage == PageSelect.contact
    //                     ? "assets/img/mail_color.png"
    //                     : "assets/img/mail_grey.png",
    //               ),
    //             ),
    //             onPointerDown: (event) {
    //               setState(() {
    //                 _currentPage = PageSelect.contact;
    //               });
    //               navigatorKey.currentState.pushReplacementNamed('/contact');
    //             },
    //           ),
    //         ],
    //       ),
    //       Column(
    //         textDirection: TextDirection.ltr,
    //         children: <Widget>[
    //           SizedBox(
    //             height: 32,
    //             width: 32,
    //                           child: Image.network(
    //               "assets/img/github.png",
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //           SizedBox(height: 10),
    //           Listener(
    //               child: Image.network(
    //                 "assets/img/linkedin.png",
    //                 fit: BoxFit.cover,
    //               ),
    //               onPointerEnter: (event) {}),
    //           SizedBox(height: 20),
    //         ],
    //       )
    //     ],
    //   ),
    // );
  }
  
  socialLinkWIdgets(){
    return <Widget>[
              SizedBox(
                height: 32,
                width: 32,
                              child: Image.network(
                  "assets/img/github.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10, width: 10,),
              Listener(
                  child: Image.network(
                    "assets/img/linkedin.png",
                    fit: BoxFit.cover,
                  ),
                  onPointerEnter: (event) {}),
              SizedBox(height: 20, width: 20,),
            ];
  }

  pageLinkWidgets(){
    return <Widget>[
        Listener(
          child: SizedBox(
            height: 32,
            width: 32,
            child: Image.network(
              _currentPage == PageSelect.home
                  ? "assets/img/home_color.png"
                  : "assets/img/home_grey.png",
            ),
          ),
          onPointerDown: (event) {
            setState(() {
              _currentPage = PageSelect.home;
            });
            navigatorKey.currentState.pushReplacementNamed('/');
          },
          onPointerEnter: (event) {
            print('test');
          },
          onPointerHover: (event) {
            print('object');
          },
        ),
        SizedBox(height: 10, width: 10,),
        Listener(
          child: SizedBox(
            height: 32,
            width: 32,
            child: Image.network(
              _currentPage == PageSelect.about
                  ? "assets/img/profile_color.png"
                  : "assets/img/profile_grey.png",
            ),
          ),
          onPointerDown: (event) {
            setState(() {
              _currentPage = PageSelect.about;
            });
            navigatorKey.currentState.pushReplacementNamed('/about');
          },
        ),
        SizedBox(height: 10, width: 10,),
        Listener(
          child: SizedBox(
            width: 32,
            height: 32,
            child: Image.network(
              _currentPage == PageSelect.youtube
                  ? "assets/img/youtube_color.png"
                  : "assets/img/youtube_grey.png",
            ),
          ),
          onPointerDown: (event) {
            setState(() {
              _currentPage = PageSelect.youtube;
            });
            navigatorKey.currentState.pushReplacementNamed('/youtube');
          },
        ),
        SizedBox(height: 10,width: 10,),
        Listener(
          child: SizedBox(
            height: 32,
            width: 32,
            child: Image.network(
              _currentPage == PageSelect.skills
                  ? "assets/img/hammer_color.png"
                  : "assets/img/hammer_grey.png",
            ),
          ),
          onPointerDown: (event) {
            setState(() {
              _currentPage = PageSelect.skills;
            });
            navigatorKey.currentState.pushReplacementNamed('/skills');
          },
        ),
        SizedBox(height: 10, width: 10,),
        Listener(
          child: SizedBox(
            width: 32,
            height: 32,
            child: Image.network(
              _currentPage == PageSelect.contact
                  ? "assets/img/mail_color.png"
                  : "assets/img/mail_grey.png",
            ),
          ),
          onPointerDown: (event) {
            setState(() {
              _currentPage = PageSelect.contact;
            });
            navigatorKey.currentState.pushReplacementNamed('/contact');
          },
        ),
      ];
  }

menuWidgets() {
  return <Widget>[
    Column(
      textDirection: TextDirection.ltr,
      children: <Widget>[
        SizedBox(height: 10),
        Text(
          "K",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color: Color.fromARGB(255, 102, 252, 241),
              fontFamily: 'Monoton',
              fontSize: 35),
        ),
        Text(
          'Kent',
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color: Color.fromARGB(255, 102, 252, 241),
              fontFamily: 'OverpassMono'),
        )
      ],
    ),
    Column(
      textDirection: TextDirection.ltr,
 
    ),
    Column(
      textDirection: TextDirection.ltr,
      children: <Widget>[
        SizedBox(
          height: 32,
          width: 32,
          child: Image.network(
            "assets/img/github.png",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 10),
        Listener(
            child: Image.network(
              "assets/img/linkedin.png",
              fit: BoxFit.cover,
            ),
            onPointerEnter: (event) {}),
        SizedBox(height: 20),
      ],
    )
  ];
}
}

enum PageSelect { home, about, skills, work, contact, youtube }
