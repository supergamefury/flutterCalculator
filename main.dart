import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(calc());
}

class calc extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return calcstate();
  }
}

class calcstate extends State<calc> {
  @override
  var answer = 'answer here';
  String input = '';
  Parser p = Parser();
  ContextModel cm = ContextModel();
  calculate(String a) {
    Expression exp = p.parse(a);
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      answer = eval.toString();
      a = answer;
      print(answer);
    });
  }

  addToUserInput(String a) {
    setState(() {
      input = input + a;
    });
  }

  clearInput() {
    setState(() {
      input = '';
      answer = '';
    });
  }

  Widget build(BuildContext context) {
    TextEditingController userinputController = TextEditingController();
    userinputController.text = 'enter equation here';
    return MaterialApp(
        theme: ThemeData(
            // ignore: prefer_const_constructors
            colorScheme: ColorScheme(
                brightness: Brightness.dark,
                primary: Colors.black,
                onPrimary: Colors.orange,
                secondary: Colors.orange,
                onSecondary: Colors.black,
                error: Colors.red,
                onError: Colors.black,
                background: Colors.black,
                onBackground: Colors.orange,
                surface: Colors.black,
                onSurface: Colors.orange)),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('calculator'),
            centerTitle: true,
          ),
          body: Column(children: [
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.topRight,
              child: Text(
                answer,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.topRight,
              child: Text(
                input,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
            ),

            //buttons:
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    SizedBox(
                      width: 110,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            addToUserInput('1');
                          },
                          child: const Text(
                            '1',
                            style: TextStyle(fontSize: 30),
                          )),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    SizedBox(
                      width: 110,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            addToUserInput('2');
                          },
                          child: const Text(
                            '2',
                            style: TextStyle(fontSize: 30),
                          )),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    SizedBox(
                      width: 110,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            addToUserInput('3');
                          },
                          child: const Text(
                            '3',
                            style: TextStyle(fontSize: 30),
                          )),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    SizedBox(
                      width: 110,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            addToUserInput('4');
                          },
                          child: const Text(
                            '4',
                            style: TextStyle(fontSize: 30),
                          )),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    SizedBox(
                      width: 110,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            addToUserInput('5');
                          },
                          child: const Text(
                            '5',
                            style: TextStyle(fontSize: 30),
                          )),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    SizedBox(
                      width: 110,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            addToUserInput('6');
                          },
                          child: const Text(
                            '6',
                            style: TextStyle(fontSize: 30),
                          )),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    SizedBox(
                      width: 110,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            addToUserInput('7');
                          },
                          child: const Text(
                            '7',
                            style: TextStyle(fontSize: 30),
                          )),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    SizedBox(
                      width: 110,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            addToUserInput('8');
                          },
                          child: const Text(
                            '8',
                            style: TextStyle(fontSize: 30),
                          )),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    SizedBox(
                      width: 110,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            addToUserInput('9');
                          },
                          child: const Text(
                            '9',
                            style: TextStyle(fontSize: 30),
                          )),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    SizedBox(
                      width: 110,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            addToUserInput('0');
                          },
                          child: const Text(
                            '0',
                            style: TextStyle(fontSize: 30),
                          )),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    SizedBox(
                      width: 110,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            addToUserInput('+');
                          },
                          child: const Text(
                            '+',
                            style: TextStyle(fontSize: 30),
                          )),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    SizedBox(
                      width: 110,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            addToUserInput('-');
                          },
                          child: const Text(
                            '-',
                            style: TextStyle(fontSize: 30),
                          )),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    SizedBox(
                      width: 110,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            addToUserInput('/');
                          },
                          child: const Text(
                            '/',
                            style: TextStyle(fontSize: 30),
                          )),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    SizedBox(
                      width: 110,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            addToUserInput('*');
                          },
                          child: const Text(
                            '*',
                            style: TextStyle(fontSize: 30),
                          )),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    SizedBox(
                      width: 110,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            calculate(input);
                          },
                          child: const Text(
                            '=',
                            style: TextStyle(fontSize: 30),
                          )),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 110,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            clearInput();
                          },
                          child: const Text(
                            'clear',
                            style: TextStyle(fontSize: 30),
                          )),
                    ),
                  )),
            ),

            // Container(
            //     padding: const EdgeInsets.all(10),
            //     child: TextField(controller: userinputController)),
            // Container(
            //   padding: const EdgeInsets.all(10),
            //   child: ElevatedButton(
            //       onPressed: () {
            //         calculate(userinputController.text);
            //       },
            //       child: const Text('Calculate')),
            // )
          ]),
        ));
  }
}
