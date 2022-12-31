// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/Pages/Draw.dart';
import 'package:app/Pages/Joke.dart';
import 'package:app/PagesMum/InstaHome.dart';
import 'package:app/PagesMum/InstaReels.dart';
import 'package:flutter/material.dart';

import 'PagesMum/InstaAccount.dart';
import 'PagesMum/InstaFav.dart';
import 'PagesMum/InstaSearch.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  double size = 30;
  final List<Widget> _page = [
    InstaHome(),
    Joke(),
    InstaReels(),
    Draw(),
    InstaAccount(),
  ];
  var _currentIndex = 0;
  var colorIcon = Colors.black;
  var newPostColor = Colors.black;
  var messageColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.add_box_outlined,
              color: newPostColor,
              size: size,
            ),
            onPressed: () {
              setState(() {
                newPostColor = Colors.greenAccent;
                messageColor = Colors.black;
              });
            },
          ),
          IconButton(
            icon: Icon(
              Icons.messenger_outline_rounded,
              color: messageColor,
              size: size,
            ),
            onPressed: () {
              setState(() {
                newPostColor = Colors.black;
                messageColor = Colors.greenAccent;
              });
            },
          ),
        ],
        title: Text(
          "Instagram",
          style: TextStyle(color: colorIcon),
        ),
      ),
      body: _page[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          fixedColor: Color.fromARGB(255, 28, 255, 145),
          unselectedItemColor: Color.fromARGB(255, 0, 0, 0),
          iconSize: size,
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("lib/Icons/video.png"),
                  size: 25,
                ),
                label: ""),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: ""),
          ]),
    );
  }
}
