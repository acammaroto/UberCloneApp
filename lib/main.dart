import 'package:flutter/material.dart';
import 'package:uber_clone/view/homepage.dart';

void main() {
  runApp(UberCloneApp());
}

class UberCloneApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UberClone',
      theme: ThemeData.light().copyWith(canvasColor: Colors.transparent),
      routes: {
        '/': (context) => HomePage(),
      },
      initialRoute: '/',
    );
  }
}
