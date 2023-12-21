import 'dart:ui';
import 'package:flutter/material.dart';

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
                      borderRadius: BorderRadius.circular(50 * rpx),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 15 * rpx,
                          spreadRadius: 10 * rpx,
                          color: const Color.fromARGB(50, 177, 106, 255),
                        )
                      ],
                      gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color.fromARGB(255, 134, 49, 255),
                          Color.fromARGB(255, 177, 106, 255),
                        ],
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
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40 * rpx),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 15 * rpx,
                                  spreadRadius: 10 * rpx,
                                  color: const Color.fromARGB(50, 255, 94, 214),
                                )
                              ],
                              gradient: const LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: [
                                  Color.fromARGB(255, 255, 55, 156),
                                  Color.fromARGB(255, 255, 94, 214),
                                ],
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
                                  borderRadius: BorderRadius.circular(40 * rpx),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(0.0, 0.0),
                                      blurRadius: 15 * rpx,
                                      spreadRadius: 10 * rpx,
                                      color: const Color.fromARGB(
                                          50, 77, 206, 255),
                                    )
                                  ],
                                  gradient: const LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      Color.fromARGB(255, 49, 133, 255),
                                      Color.fromARGB(255, 77, 206, 255),
                                    ],
                                  ),
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
                                  borderRadius: BorderRadius.circular(40 * rpx),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(0.0, 0.0),
                                      blurRadius: 15 * rpx,
                                      spreadRadius: 10 * rpx,
                                      color: const Color.fromARGB(
                                          50, 244, 253, 221),
                                    )
                                  ],
                                  gradient: const LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      Color.fromARGB(255, 154, 251, 254),
                                      Color.fromARGB(255, 244, 253, 221),
                                    ],
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
              // color: Color.fromRGBO(
              //     Random().nextInt(256),
              //     Random().nextInt(256),
              //     Random().nextInt(256),
              //     0.8), //color: Colors.blue.withAlpha(80),
              borderRadius: BorderRadius.circular(40 * rpx),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0.0, 0.0),
                  blurRadius: 15 * rpx,
                  spreadRadius: 10 * rpx,
                  color: const Color.fromARGB(50, 77, 206, 255),
                )
              ],
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 49, 133, 255),
                  Color.fromARGB(255, 77, 206, 255),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
