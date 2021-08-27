import 'package:flutter/material.dart';
import 'package:test/pages/todo-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Suls todos',
      theme: ThemeData(
        // brightness: Brightness.dark,
        primarySwatch: Colors.lightGreen,
      ),
      home: todoPage(name: 'today todos'),
    );
  }
}


