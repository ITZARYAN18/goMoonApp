import 'package:flutter/material.dart';

import './Homepage/go_home.dart';
void main() {
  runApp(const App());
}

class App extends StatelessWidget{
  const App({Key? key}):super(key : key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "GO_MOON",
      theme: ThemeData(scaffoldBackgroundColor:Color.fromRGBO(31, 31, 31, 1)),
      home: homePage(),
    );
  }

}