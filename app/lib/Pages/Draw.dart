// ignore_for_file: file_names

import 'package:app/Tile.dart';
import 'package:flutter/material.dart';

class Draw extends StatefulWidget {
  const Draw({super.key});

  @override
  State<Draw> createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 0, 8, 38),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 16),
        itemBuilder: (context, index) {
          return Tile();
        },
        itemCount: 256 * 4,
      ),
    );
  }
}
