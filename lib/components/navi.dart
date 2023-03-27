import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:first_flutter_app/pages/mine.dart';
// import 'package:shimmer/shimmer.dart';

class Navi extends StatefulWidget {
  const Navi({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NaviState createState() => _NaviState();
}

class _NaviState extends State<Navi> {
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(80 * rpx),
          ),
          child: renderRRect(context, rpx),
        ),
        Container(
          padding: EdgeInsets.all(20 * rpx),
          child: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (BuildContext context) => const Mine()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  rendNaviItem(
                      context, rpx, 'assets/images/icons/homes.png', '首页'),
                  rendNaviItem(
                      context, rpx, 'assets/images/icons/others.png', '消息'),
                  rendNaviItem(
                      context, rpx, 'assets/images/icons/mines.png', '我的'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget renderRRect(BuildContext context, double rpx) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(80 * rpx),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 50 * rpx, sigmaY: 50 * rpx),
          child: Opacity(
            opacity: 0.5,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(80),
                borderRadius: BorderRadius.circular(60 * rpx),
              ),
            ),
          ),
        ));
  }

  Widget rendNaviItem(
      BuildContext context, double rpx, String icon, String txt) {
    return Expanded(
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            Container(
              width: 60 * rpx,
              height: 60 * rpx,
              padding: EdgeInsets.zero,
              child: Image(
                image: AssetImage(icon),
              ),
            )
          ],
        ),
      ),
    );
  }
}
