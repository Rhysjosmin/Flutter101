import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Joke extends StatefulWidget {
  const Joke({super.key});
  @override
  State<Joke> createState() => _JokeState();
}

class _JokeState extends State<Joke> {
  String Joke = 'Joke';
  String JokeCategory = 'JokeCategory';
  void NewJoke() async {
    var searchResult =
        await http.get(Uri.parse('https://v2.jokeapi.dev/joke/Any'));
    var result = jsonDecode(searchResult.body);
    print(result);
    setState(() {
      if (result['type'] == "single") {
        Joke = result['joke'];
      } else {
        Joke = result["setup"] + "\n\nDELIVERY:  \n" + result["delivery"];
      }
      JokeCategory = result['category'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        child: const Icon(
          Icons.add,
          size: 40,
        ),
        onPressed: () {
          setState(() {
            NewJoke();
          });
        },
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                height: 200,
                alignment: Alignment.bottomCenter,
                child: Center(
                    child: Text(
                  JokeCategory,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ))),
            Container(
              alignment: Alignment.topCenter,
              height: 400,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    Joke,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                alignment: Alignment.topCenter,
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
