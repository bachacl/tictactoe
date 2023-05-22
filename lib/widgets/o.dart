import 'package:flutter/material.dart';

class O extends StatelessWidget {
  final double size;
  final Color color;

  O(this.size, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 2),
          gradient: RadialGradient(
              radius: 0.18,
              colors: [Colors.transparent, color],
              stops: [1, 1])),
    );
  }
}
