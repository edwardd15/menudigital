import 'package:flutter/material.dart';
import 'package:menudigital/start_page.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: "Poppins"),
        home: Scaffold(
          body: StartPage()
        ));
  }
}


