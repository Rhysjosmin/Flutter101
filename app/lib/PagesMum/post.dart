import 'package:flutter/material.dart';

import '../button.dart';

class Post extends StatefulWidget {
  const Post({super.key, required this.TextColor, required this.index});
  final TextColor;
  final index;

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  var like = false;
  var heartColor = Colors.white;
  void Like() {
    if (like == true) {
      heartColor = Colors.pink;
    } else {
      heartColor = Colors.white;
    }
  }

  double radius = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        height: 560,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Column(children: [
          Expanded(
            flex: 10,
            child: Container(
              child: Stack(children: [
                GestureDetector(
                  onDoubleTap: () {
                    setState(() {
                      if (like == false) {
                        like = true;
                      } else {
                        like = false;
                      }
                      Like();
                    });
                  },
                  child: Container(
                    height: 420,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(radius),
                          topRight: Radius.circular(radius)),
                      child: Image.network(
                        'https://picsum.photos/1080/1080?random=' +
                            (widget.index + 100).toString(),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Button(
                        Logo: Icons.favorite,
                        color: heartColor,
                      ),
                      Button(
                        Logo: Icons.send,
                        color: Colors.white,
                      ),
                      Button(
                        Logo: Icons.more_vert,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 45,
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "@Poopie",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: widget.TextColor,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "A wise man makes his own decisions, but an ignorant man mindlessly follows the crowd.",
                        style: TextStyle(
                          color: widget.TextColor,
                        ),
                      ),
                    ),
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
