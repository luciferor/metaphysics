import 'dart:ui';
import 'package:flutter/material.dart';

class Apps extends StatelessWidget {
  const Apps({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    return Padding(
      padding: EdgeInsets.fromLTRB(20 * rpx, 0, 20 * rpx, 10 * rpx),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 15 * rpx, 15 * rpx, 15 * rpx),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.fromLTRB(
                        20 * rpx, 40 * rpx, 40 * rpx, 20 * rpx),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '智能助手',
                          style: TextStyle(
                            fontSize: 32 * rpx,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 20 * rpx,
                    left: 0,
                    width: 150 * rpx,
                    height: 150 * rpx,
                    child: Image.asset(
                      'assets/images/ai.png',
                      fit: BoxFit.cover,
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
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 15 * rpx, 0, 0),
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
