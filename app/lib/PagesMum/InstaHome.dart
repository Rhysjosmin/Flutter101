import 'package:app/PagesMum/Stories.dart';
import 'package:app/PagesMum/posts.dart';
import 'package:flutter/material.dart';

class InstaHome extends StatefulWidget {
  const InstaHome({super.key});

  @override
  State<InstaHome> createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
  var _TextColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Stories(),
          Posts(
            TextColor: _TextColor,
          ),

          //Stories

          //Posts
        ],
      ),
    );
  }
}
