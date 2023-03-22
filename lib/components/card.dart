import 'dart:ui';

import 'package:flutter/material.dart';

class CardCus extends StatelessWidget {
  const CardCus({Key? key, this.onTap}) : super(key: key);
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    return GestureDetector(
      onTap: () async {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width * rpx,
        height: 400 * rpx,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(80 * rpx)),
        child: ClipRect(
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 50 * rpx, sigmaY: 50 * rpx),
          child: Opacity(
            opacity: 0.5,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.blue.withAlpha(80),
                borderRadius: BorderRadius.circular(80 * rpx),
              ),
            ),
          ),
        )),
      ),
    );
  }
}
