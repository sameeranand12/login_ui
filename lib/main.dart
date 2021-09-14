import 'package:flutter/material.dart';
import 'package:loginflutter/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(primaryColor: Colors.yellow[700]),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: HomePage(),
      ),
    );
  }
}
