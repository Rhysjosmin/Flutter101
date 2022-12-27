import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key, required this.Logo, required this.color});
  final Logo;
  final color;
  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 8, 16),
        child: Icon(
          widget.Logo,
          size: 30,
          color: widget.color,
        ),
      ),
    );
  }
}
