import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class Ani extends StatelessWidget {
  const Ani({Key? key, this.child, required this.pages}) : super(key: key);
  final Widget? child;
  final StatefulWidget pages;
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width/750;
    return OpenContainer(
      transitionType: ContainerTransitionType.fadeThrough,
      openBuilder: (BuildContext context, VoidCallback _) {
        return pages;
      },
      closedElevation: 6.0,
      openElevation:4.0,
      closedShape: RoundedRectangleBorder(
        side:BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(300*rpx),
        ),
      ),
      closedColor: Colors.transparent,
      openColor:Colors.transparent,
      middleColor:Colors.transparent,
      closedBuilder: (BuildContext context, VoidCallback openContainer) {
        return child as Widget;
      },
    );
  }
}
