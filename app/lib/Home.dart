// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors

import 'package:app/Pages/Joke.dart';
import 'package:flutter/material.dart';

import 'Pages/Draw.dart';
import 'Pages/Tiktok.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _pages = [Joke(), Draw(), TikTok()];
  int _selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.celebration), label: "Joke"),
            BottomNavigationBarItem(icon: Icon(Icons.draw), label: "Draw"),
            BottomNavigationBarItem(icon: Icon(Icons.tiktok), label: "TikTok"),
          ],
          currentIndex: _selectedPage,
          onTap: (Index) {
            setState(() {
              _selectedPage = Index;
            });
          },
        ),
        body: _pages[_selectedPage]);
  }
}
