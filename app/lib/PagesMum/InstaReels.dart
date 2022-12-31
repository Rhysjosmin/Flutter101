import 'package:flutter/material.dart';

import 'package:app/Pages/Draw.dart';
import 'package:app/Pages/Joke.dart';

import '../Video.dart';

class InstaReels extends StatefulWidget {
  const InstaReels({super.key});

  @override
  State<InstaReels> createState() => _InstaReelsState();
}

class _InstaReelsState extends State<InstaReels> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Video(id: index.toString());
        },
        itemCount: 100);
  }
}
