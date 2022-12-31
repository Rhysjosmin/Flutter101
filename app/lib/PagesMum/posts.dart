import 'dart:collection';
import 'dart:convert';

import 'package:app/PagesMum/post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Posts extends StatefulWidget {
  const Posts({super.key, required this.TextColor});
  final TextColor;

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: Colors.white,
        height: 565,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Post(TextColor: widget.TextColor, index: index);
          },
          itemCount: 20,
        ),
      ),
    );
  }
}
