import 'dart:ui';
import 'package:flutter/material.dart';

class Blur extends StatelessWidget {
  const Blur({Key? key, this.widget, this.radius, this.rpx}) : super(key: key);
  final Widget? widget;
  final double? radius;
  final double? rpx;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: renderRRect(context, rpx!, radius!),
        ),
        Container(
          child: widget,
        )
      ],
    );
  }
}

Widget renderRRect(BuildContext context, double rpx, double radius) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(radius * rpx),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 50 * rpx, sigmaY: 50 * rpx),
      child: Opacity(
        opacity: 0.5,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius * rpx),
              border: Border.all(
                  color: const Color.fromARGB(150, 255, 255, 255), width: 1)),
        ),
      ),
    ),
  );
}
