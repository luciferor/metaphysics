import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class Ani extends StatelessWidget {
  const Ani({Key? key, this.child, required this.pages, required this.radius})
      : super(key: key);
  final Widget? child;
  final StatefulWidget pages;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    return OpenContainer(
      transitionType: ContainerTransitionType.fade,
      openBuilder: (BuildContext context, VoidCallback _) {
        return pages;
      },
      closedElevation: 0.0,
      openElevation: 4.0,
      closedShape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(radius! * rpx),
        ),
      ),
      closedColor: Colors.transparent,
      openColor: Colors.transparent,
      middleColor: Colors.transparent,
      closedBuilder: (BuildContext context, VoidCallback openContainer) {
        return child as Widget;
      },
    );
  }
}
