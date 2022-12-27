// ignore_for_file: prefer_typing_uninitialized_variables

//https://picsum.photos/1080/1920

import 'dart:math';

import 'package:app/button.dart';
import 'package:flutter/material.dart';

// https://picsum.photos/id/0/info

class Video extends StatefulWidget {
  Video({super.key, required this.id});
  String id;

  var like = false;
  var heartColor = Colors.white;
  void Like() {
    if (like == true) {
      heartColor = Colors.pink;
    } else {
      heartColor = Colors.white;
    }
  }

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GestureDetector(
            onDoubleTap: () {
              setState(() {
                if (widget.like == false) {
                  widget.like = true;
                } else {
                  widget.like = false;
                }
                widget.Like();
              });
            },
            child: Container(
              child: Image.network(
                'https://picsum.photos/1080/1920?random=' + widget.id,
                fit: BoxFit.cover,
                height: 1080,
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
                  color: widget.heartColor,
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
                  height: 70,
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color.fromARGB(170, 0, 0, 0), Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter),
              ),
              height: 100,
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Container(
                        height: 30,
                        alignment: Alignment.topLeft,
                        child: Text(
                          "@Rhys",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 4, 0, 0),
                      child: Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "What kind of doctor is Dr. Pepper?ujgdisguydsgdyg asjvd dsufyaud sdgugyasdy sydaguyg",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
