import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final List<Color>? gradient;
  final Color? color;
  final double? height;
  final double? width;
  final GestureTapCallback? onTap;
  final double borderRadius;
  final Widget? child;

  Button(
      {this.gradient,
      this.color,
      this.onTap,
      this.child,
      this.borderRadius = 0,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: color,
          gradient: this.gradient == null
              ? null
              : LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.1, 0.8],
                  colors: gradient!),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 10)
          ],
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
