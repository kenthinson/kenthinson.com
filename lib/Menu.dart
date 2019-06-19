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
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth > 800){
      return Container(
          color: Color.fromARGB(255, 11, 12, 16),
          width: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(children: <Widget>[
              kLogo(),
              kentText(),
              ],),
              Column(children: siteLinks()),
              Column(children: socialLinkes())
            ],
          ));
      }else if (constraints.maxWidth > 500){
      return Container(
          color: Color.fromARGB(255, 11, 12, 16),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            textDirection: TextDirection.ltr,
            children: <Widget>[
              Row(textDirection: TextDirection.ltr,children: <Widget>[
              SizedBox(width: 10,height: 10,),
              kLogo(),
              ]),
              Row(textDirection: TextDirection.ltr,
                children: siteLinks(),),
                Row(textDirection: TextDirection.ltr,
                children: socialLinkes())
            ],
          ));
      }else{
      return Container(
          color: Color.fromARGB(255, 11, 12, 16),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            textDirection: TextDirection.ltr,
            children: <Widget>[
              Row(textDirection: TextDirection.ltr,
              children: siteLinks()),
              SizedBox(width: 10,height: 10,),
              Row(textDirection: TextDirection.ltr,
              children: socialLinkes())
            ],
          ));
      }
    });
  }
  socialLinkes(){
    return [
                github(),
                SizedBox(height: 10,width: 10,),
                linkedIn(),
                SizedBox(height: 10,width: 10,)
    ];
  }

  siteLinks(){
    return [
      home(),
      SizedBox(height: 10,width: 10,),
      about(),
      SizedBox(height: 10,width: 10,),
      skills(),
      SizedBox(height: 10,width: 10,),
      youtube(),
      SizedBox(height: 10,width: 10,),
      contact()
    ];
  }

  Listener home() {
    return Listener(
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
    );
  }

  Listener about() {
    return Listener(
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
    );
  }

  Listener youtube() {
    return Listener(
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
    );
  }

  Listener skills() {
    return Listener(
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
    );
  }

  Listener contact() {
    return Listener(
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
    );
  }

  menuWidgets() {
    return <Widget>[
      Column(
        textDirection: TextDirection.ltr,
        children: <Widget>[SizedBox(height: 10), kLogo(), kentText()],
      ),
      Column(
        textDirection: TextDirection.ltr,
      ),
      Column(
        textDirection: TextDirection.ltr,
        children: <Widget>[
          github(),
          SizedBox(height: 10),
          linkedIn(),
          SizedBox(height: 20),
        ],
      )
    ];
  }

  SizedBox github() {
    return SizedBox(
      height: 32,
      width: 32,
      child: Image.network(
        "assets/img/github.png",
        fit: BoxFit.cover,
      ),
    );
  }

  Listener linkedIn() {
    return Listener(
        child: Image.network(
          "assets/img/linkedin.png",
          fit: BoxFit.cover,
        ),
        onPointerEnter: (event) {});
  }

  Text kentText() {
    return Text(
      'Kent',
      textDirection: TextDirection.ltr,
      style: TextStyle(
          color: Color.fromARGB(255, 102, 252, 241),
          fontFamily: 'OverpassMono'),
    );
  }

  Text kLogo() {
    return Text(
      "K",
      textDirection: TextDirection.ltr,
      style: TextStyle(
          color: Color.fromARGB(255, 102, 252, 241),
          fontFamily: 'Monoton',
          fontSize: 35),
    );
  }
}

enum PageSelect { home, about, skills, work, contact, youtube }
