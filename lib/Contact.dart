import 'package:flutter_web/material.dart';

import 'Menu.dart';


class Contact extends StatelessWidget {
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
                            'Contact',
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
                      child: Form(
                        autovalidate: true,
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Expanded(
                                    child: CustomTextField("Name", false, (text) {
                                      if (text == '') {
                                return 'Required';
                              } else if(WordCount().countWords(text).length < 2){
                                return 'First & Last. Ex: Jhonny Appleseed';
                              }else{
                                return null;
                              }
                                })),
                                SizedBox(width: 14),
                                Expanded(
                                    child:
                                        CustomTextField('Email', false, (text) {
                                  String p =
                                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

                                  RegExp regExp = new RegExp(p);
                                  if (regExp.hasMatch(text)) {
                                    return null;
                                  } else if (text == "") {
                                    return "Required";
                                  } else {
                                    return "Invalid Email";
                                  }
                                }))
                              ],
                            ),
                            SizedBox(height: 14),
                            CustomTextField("Subject", false, (text) {
                                                          if (text == '') {
                                return 'Required';
                              } else if(WordCount().countWords(text).length < 3){
                                return 'Needs more detail';
                              }else{
                                return null;
                              }
                            }),
                            SizedBox(height: 14),
                            CustomTextField('Message', true, (text) {
                              if(text == ''){
                                return 'Required';
                              }else if(WordCount().countWords(text).length < 5){
                                return 'More detail please';
                              }else{
                                return null;
                              }
                            }),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  //padding: const EdgeInsets.all(8.0),
                                  padding: EdgeInsets.only(right: 14),
                                  child: OutlineButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5.0)),
                                    borderSide: BorderSide(
                                        width: 5.0,
                                        color:
                                            Color.fromARGB(255, 102, 252, 241)),
                                    onPressed: () {},
                                    child: Text(
                                      'Send',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 102, 252, 241),
                                          fontFamily: 'OverpassMono'),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
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

class CustomTextField extends StatefulWidget {
  CustomTextField(String label, bool expand, String valadate(String text))
      : this.expand = expand,
        this.valadate = valadate,
        this.label = label;
  final label;
  final expand;
  final valadate;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  var bottom = 0.0;
  @override
  Widget build(BuildContext context) {
    if (widget.expand) {
      return Expanded(
        child: innerWidget(),
      );
    } else {
      return innerWidget();
    }
  }

  Widget innerWidget() {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: bottom,
          child: Container(
            color: Color.fromARGB(255, 51, 60, 71),
          ),
        ),
        TextFormField(
          validator: (text) {
            final val = widget.valadate(text);
            print(val);
            if (val == null) {
              setState(() {
                bottom = 0.0;
              });
            } else {
              setState(() {
                bottom = 26.0;
              });
            }
            return val;
          },
          maxLines: (widget.expand == false) ? 1 : 99,
          decoration: InputDecoration(
              errorStyle: TextStyle(
                  backgroundColor: Colors.red,
                  color: Colors.white,
                  fontFamily: 'OverpassMono',
                  fontSize: 16),
              border: OutlineInputBorder(),
              labelText: widget.label,
              labelStyle: TextStyle(
                  color: Color.fromARGB(255, 102, 252, 241),
                  fontFamily: 'OverpassMono')),
          style: TextStyle(color: Colors.grey, fontFamily: 'OverpassMono'),
        ),
      ],
    );
  }
}

class WordCount {
  Map<String, int> countWords(String sentence) {
    var words = new RegExp(r"\w+(\'\w+)?");

    return words
        .allMatches(sentence)
        .map((item) => item.group(0).toLowerCase())
        .fold(new Map<String, int>(),
            (Map<String, int> wordCounts, String word) {
      if (wordCounts.containsKey(word)) {
        wordCounts[word] += 1;
      } else {
        wordCounts[word] = 1;
      }
      return wordCounts;
    });
    // ugly dartfmt tool
  }
}