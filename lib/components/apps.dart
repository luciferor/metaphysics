import 'dart:ui';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:first_flutter_app/components/ani.dart';
import 'package:first_flutter_app/pages/ai.dart';
import 'package:flutter/material.dart';

class Apps extends StatelessWidget {
  const Apps({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    List<String> texts = [
      '助您解决疑难杂症,提供新体验！',
      '一键搞定,轻松无忧！更方便！',
      '智能交互,如影随形,更便捷！',
      '了解你的一切,你的得力助手！',
      '为你的工作和生活事半功倍！',
      '告别繁琐复杂,开启智能新时代！',
    ];
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
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(
                        20 * rpx, 20 * rpx, 40 * rpx, 20 * rpx),
                    constraints: const BoxConstraints.expand(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50 * rpx),
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
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      constraints: const BoxConstraints.expand(),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40 * rpx),
                        child: Image.asset(
                          'assets/images/aia.gif',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -100 * rpx,
                    right: -30 * rpx,
                    height: 250 * rpx,
                    child: Opacity(
                      opacity: 0.8,
                      child: Image.asset(
                        'assets/images/ai.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      padding: EdgeInsets.all(40 * rpx),
                      alignment: Alignment.topCenter,
                      child: DefaultTextStyle(
                        style: TextStyle(
                          fontSize: 24 * rpx,
                          fontFamily: 'Horizon',
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                        child: AnimatedTextKit(
                          pause: const Duration(seconds: 3),
                          animatedTexts:
                              texts.map((e) => RotateAnimatedText(e)).toList(),
                          repeatForever: true,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    bottom: 0,
                    child: Ani(
                      radius: 30 * rpx,
                      pages: const Ai(),
                      child: Container(),
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
                          Container(
                            padding:
                                EdgeInsets.fromLTRB(40 * rpx, 10 * rpx, 0, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '23',
                                  style: TextStyle(
                                    fontSize: 42 * rpx,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '已完成',
                                  style: TextStyle(
                                    fontSize: 24 * rpx,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            width: 120 * rpx,
                            height: 120 * rpx,
                            bottom: -30 * rpx,
                            right: 0,
                            child: Image.asset(
                              'assets/images/6afd9e1.png',
                              fit: BoxFit.fitHeight,
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
                          Container(
                            padding:
                                EdgeInsets.fromLTRB(40 * rpx, 10 * rpx, 0, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '5',
                                  style: TextStyle(
                                    fontSize: 42 * rpx,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '未完成',
                                  style: TextStyle(
                                    fontSize: 24 * rpx,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            width: 120 * rpx,
                            height: 120 * rpx,
                            bottom: -30 * rpx,
                            right: 0,
                            child: Image.asset(
                              'assets/images/434ac1.png',
                              fit: BoxFit.fitHeight,
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
