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
  int speed = 300;
  bool isDrawer = false;
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
        Container(
          color: Colors.blue,
        ),
        AnimatedPositioned(
          left: isDrawer ? MediaQuery.of(context).size.width - 300 * rpx : 0,
          right: isDrawer ? -MediaQuery.of(context).size.width - 300 * rpx : 0,
          top: isDrawer ? MediaQuery.of(context).size.height / 7 : 0,
          bottom: isDrawer ? MediaQuery.of(context).size.height / 7 : 0,
          duration: Duration(milliseconds: speed),
          curve: Curves.linear,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SizedBox(
              child: GestureDetector(
                onTap: () {
                  if (isDrawer) {
                    setState(() {
                      isDrawer = false;
                    });
                  } else {
                    setState(() {
                      isDrawer = true;
                    });
                  }
                },
                child: Base(
                  childs: Stack(
                    children: const <Widget>[
                      Map(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget renderRRect(BuildContext context, double rpx, bool idw) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(idw ? 40 * rpx : 0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 50 * rpx, sigmaY: 50 * rpx),
        child: Opacity(
          opacity: 0.5,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(idw ? 40 * rpx : 0),
            ),
          ),
        ),
      ),
    );
  }
}
