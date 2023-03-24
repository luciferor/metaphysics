import 'dart:ui';

import 'package:flutter/material.dart';

class Base extends StatefulWidget {
  const Base({Key? key, Column? childs}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _BaseState createState() => _BaseState();
}

class _BaseState extends State<Base> with SingleTickerProviderStateMixin {
  //logo旋转动画控制器
  late AnimationController _logoRotateController;
  @override
  void initState() {
    super.initState();
    //初始化logo旋转控制器
    _logoRotateController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(); //一直循环
  }

  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    double tp = MediaQuery.of(context).padding.top;
    double bp = MediaQuery.of(context).padding.bottom;
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image(
          // image: const AssetImage('assets/images/9c4ed027180fa668626b7aa0aea7f141.jpeg'),
          image: const NetworkImage(
              'https://gd-hbimg.huaban.com/c5292f6de95aef6403360b73e2aa1435162d316b13beb-IWdi0N_fw1200webp'),
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width, //整个屏幕的宽度
          height: MediaQuery.of(context).size.height, //整个屏幕的高度
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(0, tp + (90 * rpx), 0, 0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: Center(
                  child: RotationTransition(
                      turns: _logoRotateController,
                      child: const Image(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('assets/images/logo.png'))),
                )),
          ],
        ),
        ClipRect(
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Opacity(
            opacity: 0.8,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Color.fromARGB(240, 0, 0, 0),
              ),
            ),
          ),
        )),
        Container(
          padding: const EdgeInsets.all(0),
          child: widget
              .childs, //这里取不到传过来的参数，妈的************************************************
        ),
      ],
    ));
  }
}
