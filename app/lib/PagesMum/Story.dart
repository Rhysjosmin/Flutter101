import 'package:flutter/material.dart';

class Story extends StatefulWidget {
  const Story({super.key, required this.index});
  final int index;

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: Colors.white,
        width: 90,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(1.9),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                        'https://picsum.photos/1080/1080?random=' +
                            widget.index.toString()),
                  ),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 255, 255, 255)),
                width: 30,
                height: 30,
              ),
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.blue,
                  Colors.pink,
                  Colors.orange,
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                shape: BoxShape.circle),
          ),
        ),
      ),
    );
  }
}
