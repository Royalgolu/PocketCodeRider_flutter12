import 'dart:ui';
import 'package:code_editor/FirstPage.dart';
import 'package:code_editor/circularProgress.dart';
import 'package:code_editor/problemStatements.dart';
import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:highlight/languages/dart.dart';
import 'package:highlight/languages/python.dart';
import 'package:highlight/languages/cpp.dart';
import 'package:highlight/languages/java.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WelcomePage(),
  ));
}

class MyClass extends StatefulWidget {
  String msg;

  MyClass(this.msg);

  @override
  State<MyClass> createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  CodeController? _codeController;
  String txt = 'Select a Programming Lanugage';
  String source = "void main() {\n    print(\"Hello, world!\")\n\n\n\n}\n\n\n";
  var lang = dart;

  @override
  Widget build(BuildContext context) {
    _codeController = CodeController(
      text: source,
      language: lang,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Code Console',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Column(children: [
        Container(
          decoration:
              BoxDecoration(color: const Color.fromARGB(255, 24, 23, 23)),
          height: 60,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(vertical: 7, horizontal: 5),
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    txt = "C++";
                    source =
                        "// C++ program to display \"Hello World\"\n// Header file for input output functions\n#include <iostream>\nusing namespace std;\nint main()\n{\ncout << \"Hello World\";\nreturn 0;\n}";
                    lang = cpp;
                  });
                },
                child: Text(
                  'C++',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0))),
              ),
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    txt = "Java";
                    source =
                        "class HelloWorld \n{\npublic static void main(String args[])\n{\nSystem.out.println(\"Hello, World\");\n}\n}";
                    lang = java;
                  });
                },
                child: Text(
                  'Java',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0))),
              ),
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      txt = "Dart";
                      source =
                          "void main() {\n    print(\"Hello, world!\")\n\n\n\n}\n\n\n";
                      lang = dart;
                    });
                  },
                  child: Text(
                    'Dart',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0)))),
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      txt = "Python";
                      source =
                          "# python program to print \"Hello World\" \nprint(\"Hello World\")\n\n\n\n";
                      lang = python;
                    });
                  },
                  child: Text(
                    'Python',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0)))),
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      txt = "HTML";
                    });
                  },
                  child: Text(
                    'HTML',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0)))),
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      txt = "CSS";
                    });
                  },
                  child: Text(
                    'CSS',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0)))),
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      txt = "Rubi";
                    });
                  },
                  child: Text(
                    'Rubi',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0)))),
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      txt = "Java Script";
                    });
                  },
                  child: Text(
                    'JS',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0))))
            ],
          ),
        ),
        //SizedBox(height: 110, child: Text()),

        Container(
          height: 30,
          child: Text(
            txt,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "Source Code",
                fontSize: 22,
                fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          height: 300,
          child: SingleChildScrollView(
            child: CodeTheme(
              data: CodeThemeData(styles: monokaiSublimeTheme),
              child: CodeField(
                lineNumbers: false,

                // horizontalScroll: true,

                //textSelectionTheme: theme,
                controller: _codeController!,
                textStyle: TextStyle(
                  fontFamily: "Source Code",
                ),
              ),
            ),
          ),
        ),
      ]),
      floatingActionButton: Container(
        height: 60,
        width: 120,
        child: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 24, 25, 26),
          splashColor: Color.fromARGB(31, 42, 42, 44),
          onPressed: () {
            MyWidget();
          },
          child: Text(
            "Sumbit Code",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
