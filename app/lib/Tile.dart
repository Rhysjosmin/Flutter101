import 'package:flutter/material.dart';

class Tile extends StatefulWidget {
  const Tile({super.key});

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  var _color = Colors.black;
  var _padding = 1.0;
  var _rad = 1.0;
  void _Clicked() {
    setState(() {
      if (_color == Colors.black) {
        _color = Colors.deepPurple;
      } else {
        _color = Colors.black;
      }
    });
  }

  void _Clicked2() {
    setState(() {
      if (_color == Colors.black) {
        _color = Colors.white;
      } else {
        _color = Colors.black;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _Clicked,
      onLongPress: _Clicked2,
      child: Padding(
        padding: EdgeInsets.all(_padding),
        child: Container(
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(_rad),
          ),
        ),
      ),
    );
  }
}
