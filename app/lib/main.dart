// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:app/mumsHome.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home2(),
      theme: ThemeData(
          brightness: Brightness.dark,
          accentColor: Color.fromARGB(255, 22, 253, 141),
          canvasColor: Colors.deepPurple),
    );
  }
}
