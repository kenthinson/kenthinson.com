import 'PageTemplate.dart';
import 'package:flutter_web/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return pageTemplate(
        'Contact',
        Form(
          autovalidate: true,
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints(maxWidth: 800),
                child: buildNameAndEmailLayout(),
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField("Subject", false, (text) {
                if (text == '') {
                  return 'Required';
                } else if (WordCount().countWords(text).length < 3) {
                  return 'Needs more detail';
                } else {
                  return null;
                }
              }),
              SizedBox(
                height: 15,
              ),
              CustomTextField('Message', true, (text) {
                if (text == '') {
                  return 'Required';
                } else if (WordCount().countWords(text).length < 5) {
                  return 'More detail please';
                } else {
                  return null;
                }
              }),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  OutlineButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    borderSide: BorderSide(
                        width: 5.0, color: Color.fromARGB(255, 102, 252, 241)),
                    onPressed: () {},
                    child: Text(
                      'Send',
                      style: TextStyle(
                          color: Color.fromARGB(255, 102, 252, 241),
                          fontFamily: 'OverpassMono'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  buildNameAndEmailLayout() {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 350) {
          return Column(
            children: <Widget>[
              nameTextField(),
              SizedBox(
                height: 14,
              ),
              emailTextField()
            ],
          );
        } else {
          return Row(
            children: <Widget>[
              Expanded(child: nameTextField()),
              SizedBox(width: 14),
              Expanded(child: emailTextField())
            ],
          );
        }
      },
    );
  }

  CustomTextField emailTextField() {
    return CustomTextField('Email', false, (text) {
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
    });
  }

  CustomTextField nameTextField() {
    return CustomTextField("Name", false, (text) {
      if (text == '') {
        return 'Required';
      } else if (WordCount().countWords(text).length < 2) {
        return 'First & Last. Ex: Jhonny Appleseed';
      } else {
        return null;
      }
    });
  }
}

class CustomTextField extends StatefulWidget {
  CustomTextField(String label, bool expand, String validate(String text))
      : this.expand = expand,
        this.validate = validate,
        this.label = label;
  final label;
  final expand;
  final validate;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  var bottom = 0.0;
  var errorFontSize;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 300) {
          errorFontSize = 10.0;
          return Container(
            constraints: BoxConstraints(maxHeight: 100),
            child: innerWidget(),
          );
        } else {
          errorFontSize = 16.0;
          return Container(
            constraints: BoxConstraints(maxHeight: 300),
            child: innerWidget(),
          );
        }
      },
    );
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
            final val = widget.validate(text);
            print(val);
            if (val == null) {
              setState(() {
                bottom = 0.0;
              });
            } else {
              setState(() {
                bottom = 30.0;
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
                  fontSize: errorFontSize),
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
  }
}
