import 'dart:ui';
import 'package:first_flutter_app/components/ani.dart';
import 'package:first_flutter_app/pages/mine.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:first_flutter_app/classes/https.dart';
// import 'package:first_flutter_app/classes/res.dart';
import 'package:first_flutter_app/components/base.dart';
import 'package:first_flutter_app/components/map.dart';

class Homie extends StatefulWidget {
  const Homie({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _HomieState createState() => _HomieState();
}

class _HomieState extends State<Homie> with SingleTickerProviderStateMixin {
  double pos = 0;
  int speed = 500;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    double tp = MediaQuery.of(context).padding.top;
    double bp = MediaQuery.of(context).padding.bottom;

    // return Base(
    //   childs: Stack(
    //     children: const <Widget>[
    //       Map(),
    //     ],
    //   ),
    // );

    return Stack(
      children: [
        AnimatedPositioned(
          left: pos,
          top: pos,
          bottom: pos,
          duration: Duration(milliseconds: speed),
          curve: Curves.linear,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: FloatingActionButton(
              onPressed: () {
                if (pos == 100) {
                  setState(() {
                    pos = 0;
                  });
                } else {
                  setState(() {
                    pos = 100;
                  });
                }
              },
              child: const Text('aa'),
            ),
          ),
        ),
      ],
    );
  }

  Widget renderRRect(BuildContext context, double rpx) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40 * rpx),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 50 * rpx, sigmaY: 50 * rpx),
        child: Opacity(
          opacity: 0.5,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.blue.withAlpha(80),
              borderRadius: BorderRadius.circular(40 * rpx),
            ),
          ),
        ),
      ),
    );
  }
}
