import 'dart:ui';
import 'package:first_flutter_app/components/blur.dart';
import 'package:first_flutter_app/pages/ai.dart';
import 'package:first_flutter_app/pages/mine.dart';
import 'package:flutter/material.dart';
import 'ani.dart';

class Apps extends StatelessWidget {
  const Apps({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    return Padding(
      padding: EdgeInsets.fromLTRB(40 * rpx, 0, 40 * rpx, 40 * rpx),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 15 * rpx, 15 * rpx, 15 * rpx),
              child: Stack(
                children: [
                  Container(
                    constraints: const BoxConstraints.expand(),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30 * rpx),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 15 * rpx,
                          spreadRadius: 10 * rpx,
                          color: Colors.blue.withOpacity(0.2),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(15 * rpx, 15 * rpx, 0, 15 * rpx),
              child: Container(
                color: Colors.transparent,
                constraints: const BoxConstraints.expand(),
                child: Column(children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 15 * rpx),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30 * rpx),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 15 * rpx,
                                  spreadRadius: 10 * rpx,
                                  color: Colors.lightGreen.withOpacity(0.2),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.fromLTRB(0, 15 * rpx, 15 * rpx, 0),
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30 * rpx),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(0.0, 0.0),
                                      blurRadius: 15 * rpx,
                                      spreadRadius: 10 * rpx,
                                      color: Colors.cyan.withOpacity(0.2),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.fromLTRB(15 * rpx, 15 * rpx, 0, 0),
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30 * rpx),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(0.0, 0.0),
                                      blurRadius: 15 * rpx,
                                      spreadRadius: 10 * rpx,
                                      color: Colors.redAccent.withOpacity(0.2),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ))
                ]),
              ),
            ),
          ),
        ],
      ),
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
              color: Colors.white.withAlpha(80),
              // color: Color.fromRGBO(
              //     Random().nextInt(256),
              //     Random().nextInt(256),
              //     Random().nextInt(256),
              //     0.8), //color: Colors.blue.withAlpha(80),
              borderRadius: BorderRadius.circular(40 * rpx),
            ),
          ),
        ),
      ),
    );
  }
}
