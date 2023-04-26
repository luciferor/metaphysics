import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class Ani extends StatelessWidget {
  const Ani({Key? key, this.child, required this.pages}) : super(key: key);
  final Widget? child;
  final StatefulWidget pages;
  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionType: ContainerTransitionType.fade,
      openBuilder: (BuildContext context, VoidCallback _) {
        return pages;
      },
      closedElevation: 6.0,
      closedShape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(56 / 2),
        ),
      ),
      closedColor: Colors.transparent,
      closedBuilder: (BuildContext context, VoidCallback openContainer) {
        return child as Widget;
      },
    );
  }
}
