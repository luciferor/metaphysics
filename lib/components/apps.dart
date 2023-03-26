import 'dart:ui';

import 'package:first_flutter_app/pages/mine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:first_flutter_app/pages/test.dart';

class Apps extends StatelessWidget {
  const Apps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    return Padding(
      padding: EdgeInsets.fromLTRB(15 * rpx, 0, 15 * rpx, 30 * rpx),
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
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30 * rpx),
                    ),
                    child: renderRRect(context, rpx),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.of(context).push(CupertinoPageRoute(
                          //     builder: (BuildContext context) => const Mine()));
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) {
                                return const OpenContainerTransformDemo();
                              },
                            ),
                          );
                        },
                        child: Stack(
                          children: [
                            Container(
                              constraints: const BoxConstraints.expand(),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40 * rpx),
                                child: const Image(
                                  image: AssetImage('assets/images/495595.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10 * rpx,
                              right: 10 * rpx,
                              width: 60 * rpx,
                              height: 60 * rpx,
                              child: const Image(
                                image: AssetImage(
                                    'assets/images/others/binding.png'),
                                fit: BoxFit.fill,
                              ),
                            )
                          ],
                        ),
                      ),
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
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(30 * rpx),
                              // boxShadow: const [
                              //   BoxShadow(
                              //       color: Colors.deepOrange,
                              //       offset: Offset(0, 0),
                              //       blurRadius: 10)
                              // ],
                            ),
                            child: renderRRect(context, rpx),
                          ),
                          Container(
                            padding: EdgeInsets.all(20 * rpx),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(CupertinoPageRoute(
                                      builder: (BuildContext context) =>
                                          const Mine()));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 80 * rpx,
                                      height: 80 * rpx,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            70, 76, 54, 244),
                                        borderRadius: BorderRadius.circular(
                                          20 * rpx,
                                        ),
                                      ),
                                      child: const Image(
                                        image: AssetImage(
                                            'assets/images/others/birthday.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Shimmer.fromColors(
                                      baseColor: Colors.white70,
                                      highlightColor: Colors.white,
                                      child: Text(
                                        '每日签到',
                                        style: TextStyle(
                                          fontSize: 48 * rpx,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white70,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(30 * rpx),
                                  // boxShadow: const [
                                  //   BoxShadow(
                                  //       color: Colors.white54,
                                  //       offset: Offset(0, 0),
                                  //       blurRadius: 10)
                                  // ],
                                ),
                                child: renderRRect(context, rpx),
                              ),
                              Container(
                                padding: EdgeInsets.all(20 * rpx),
                                child: Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          CupertinoPageRoute(
                                              builder: (BuildContext context) =>
                                                  const Mine()));
                                    },
                                    child: const Image(
                                      image: AssetImage(
                                          'assets/images/themes/logs.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              )
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
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(30 * rpx),
                                  // boxShadow: const [
                                  //   BoxShadow(
                                  //       color: Colors.white60,
                                  //       offset: Offset(0, 0),
                                  //       blurRadius: 10)
                                  // ],
                                ),
                                child: renderRRect(context, rpx),
                              ),
                              Container(
                                padding: EdgeInsets.all(20 * rpx),
                                child: Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          CupertinoPageRoute(
                                              builder: (BuildContext context) =>
                                                  const Mine()));
                                    },
                                    child: const Image(
                                      image: AssetImage(
                                          'assets/images/others/aplay.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              )
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
        ));
  }
}
