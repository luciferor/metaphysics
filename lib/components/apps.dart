import 'dart:ui';
import 'package:first_flutter_app/pages/ai.dart';
import 'package:first_flutter_app/pages/mine.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'ani.dart';

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
                  Ani(
                    radius:40,
                    pages: const Ai(),
                    child: Stack(
                      children: [
                        Container(
                          constraints: const BoxConstraints.expand(),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40 * rpx),
                            child: const Image(
                              image: AssetImage('assets/images/b69a5aa.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        // Positioned(
                        //   top: 10 * rpx,
                        //   right: 10 * rpx,
                        //   width: 60 * rpx,
                        //   height: 60 * rpx,
                        //   child: const Image(
                        //     image:
                        //         AssetImage('assets/images/others/binding.png'),
                        //     fit: BoxFit.fill,
                        //   ),
                        // )
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
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(30 * rpx),
                            ),
                            child: renderRRect(context, rpx),
                          ),
                          const Ani(
                            radius:30,
                            pages: Mine(),
                            child: Image(
                              image: AssetImage(
                                  'assets/images/b7f282e8fe.jpeg'),
                              fit: BoxFit.fill,
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
                                ),
                                child: renderRRect(context, rpx),
                              ),
                              const Ani(
                                radius:30,
                                pages: Mine(),
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/b7f282e8fe.jpeg'),
                                  fit: BoxFit.fill,
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
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(30 * rpx),
                                ),
                                child: renderRRect(context, rpx),
                              ),
                              const Ani(
                                radius:30,
                                pages: Mine(),
                                child: Center(
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/9f305612b.jpeg'),
                                    fit: BoxFit.fill,
                                  ),
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
