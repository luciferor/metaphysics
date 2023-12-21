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
      fit: StackFit.expand,
      children: [
        Container(
          child: renderRRect(context, rpx!, radius!),
        ),
        Container(
          child: widget,
        ),
      ],
    );
  }
}

Widget renderRRect(BuildContext context, double rpx, double radius) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(radius * rpx),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 30 * rpx, sigmaY: 30 * rpx),
      child: Opacity(
        opacity: 0.8,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius * rpx),
            border: Border.all(
                color: const Color.fromARGB(100, 255, 255, 255),
                width: 2 * rpx),
          ),
        ),
      ),
    ),
  );
}
