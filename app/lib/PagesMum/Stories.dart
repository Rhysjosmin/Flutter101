// ignore_for_file: sort_child_properties_last, prefer_interpolation_to_compose_strings, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:app/PagesMum/Story.dart';
import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  const Stories({super.key});

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Story(index: index);
        },
        scrollDirection: Axis.horizontal,
        itemCount: 100,
      ),
    );
  }
}
