import 'dart:ui';
import 'package:first_flutter_app/components/ani.dart';
import 'package:first_flutter_app/components/apps.dart';
import 'package:first_flutter_app/components/blur.dart';
import 'package:first_flutter_app/pages/ai.dart';
import 'package:first_flutter_app/pages/mine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    return Padding(
      padding: EdgeInsets.all(30 * rpx),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(15 * rpx, 0, 0, 0),
              child: SizedBox(
                width: 120 * rpx,
                height: 120 * rpx,
                child: Center(
                    child: Ani(
                  pages: const Ai(),
                  child: Container(
                    color: Colors.transparent,
                    width: 80 * rpx,
                    height: 80 * rpx,
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/8e3a09875693fb.png'),
                  ),
                )),
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.fromLTRB(15 * rpx, 0, 15 * rpx, 0),
              child: Container(
                alignment: Alignment.centerLeft,
                height: 120 * rpx,
                child: Shimmer.fromColors(
                  baseColor: Colors.white70,
                  highlightColor: Colors.white,
                  child: Text(
                    '荧惑',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 38 * rpx,
                        color: Colors.white),
                  ),
                ),
              ),
            )),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 15 * rpx, 0),
              child: Ani(
                pages: const Mine(),
                child: Container(
                    width: 100 * rpx,
                    height: 100 * rpx,
                    color: Colors.transparent,
                    child: const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(
                          'https://img0.baidu.com/it/u=2699322616,853950993&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500'),
                    )),
              ),
            ),
          ]),
    );
  }
}
