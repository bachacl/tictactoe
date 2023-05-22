import 'package:flutter/material.dart';
import 'package:tictactoe_acl/constants/appColors.dart';

class X extends StatelessWidget {
  final double size;
  final double height;

  X(this.size, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: Stack(
        children: [
          Positioned(
              left: 0,
              top: size / 2 - height / 2,
              child: RotationTransition(
                turns: AlwaysStoppedAnimation(-45 / 360),
                child: Container(
                  width: size,
                  height: height,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          stops: [0.1, 0.8],
                          colors: [AppColors.red, AppColors.orange])),
                ),
              )),
          Positioned(
              right: 0,
              top: size / 2 - height / 2,
              child: RotationTransition(
                  turns: AlwaysStoppedAnimation(45 / 360),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.1, 0.8],
                        colors: [
                          AppColors.orange,
                          AppColors.red,
                        ],
                      ),
                    ),
                    height: height,
                    width: size,
                  )))
        ],
      ),
    );
  }
}
