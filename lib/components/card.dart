import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';

class CardCus extends StatelessWidget {
  const CardCus({Key? key, this.onTap, this.tag = 1}) : super(key: key);
  final Function? onTap;
  final int tag;
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    return GestureDetector(
        onTap: () async {
          if (onTap != null) {
            onTap!();
          }
        },
        child: Hero(
          tag: 'm$tag',
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2 * rpx,
                height: 300 * rpx,
                margin: EdgeInsets.fromLTRB(15 * rpx, 0, 15 * rpx, 30 * rpx),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(50 * rpx)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50 * rpx),
                    child: BackdropFilter(
                      filter:
                          ImageFilter.blur(sigmaX: 50 * rpx, sigmaY: 50 * rpx),
                      child: Opacity(
                        opacity: 0.5,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(
                                Random().nextInt(256),
                                Random().nextInt(256),
                                Random().nextInt(256),
                                0.5), //color: Colors.blue.withAlpha(80),
                            borderRadius: BorderRadius.circular(50 * rpx),
                          ),
                        ),
                      ),
                    )),
              ),
              Padding(
                padding:
                    EdgeInsets.fromLTRB(30 * rpx, 10 * rpx, 10 * rpx, 30 * rpx),
                child: Container(
                  width: 100 * rpx,
                  height: 100 * rpx,
                  margin: EdgeInsets.fromLTRB(60 * rpx, 0, 15 * rpx, 30 * rpx),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(Random().nextInt(256),
                        Random().nextInt(256), Random().nextInt(256), 0.5),
                    borderRadius: BorderRadius.all(Radius.circular(30 * rpx)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 2),
                        blurRadius: 30 * rpx,
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
