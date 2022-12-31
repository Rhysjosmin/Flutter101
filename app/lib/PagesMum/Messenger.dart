import 'package:flutter/material.dart';

import '../mumsHome.dart';

class Messenger extends StatefulWidget {
  const Messenger({super.key});

  @override
  State<Messenger> createState() => _MessengerState();
}

class _MessengerState extends State<Messenger> {
  final List<Widget> _page2 = [
    Home(),
    Messenger(),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 400,
              height: 100,
              color: Colors.amber,
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
