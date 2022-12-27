import 'package:app/Pages/Draw.dart';
import 'package:app/Pages/Joke.dart';
import 'package:flutter/material.dart';

import '../Video.dart';

class TikTok extends StatefulWidget {
  const TikTok({super.key});

  @override
  State<TikTok> createState() => _TikTokState();
}

class _TikTokState extends State<TikTok> {
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


// return PageView(
//       scrollDirection: Axis.vertical,
//       children: [
//         Video(
//           color: Colors.orangeAccent,
//           id: '1',
//         ),
//         Video(
//           color: Colors.blueAccent,
//           id: '2',
//         ),
//         Video(
//           color: Colors.deepOrange,
//           id: '3',
//         ),
//         Video(
//           color: Colors.red,
//           id: '4',
//         ),
//       ],
//     );