import 'dart:ui';

import 'package:flutter/material.dart';

class Base extends StatefulWidget {
  const Base({Key? key, this.childs}) : super(key: key);
  final Column? childs;
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
  void dispose() {
    super.dispose();
    _logoRotateController.dispose();
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
          image: const AssetImage('assets/images/495595.jpg'),
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
                  //暂时注释logo旋转图标
                  child: RotationTransition(
                      turns: _logoRotateController,
                      child: const Image(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('assets/images/logo.png'))),
                )),
          ],
        ),
        //模糊动画，暂时注释，损耗虚拟机资源
        ClipRect(
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Opacity(
            opacity: 0.1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Color.fromARGB(200, 0, 0, 0),
              ),
            ),
          ),
        )),
        Container(
          padding: const EdgeInsets.all(0),
          child: widget.childs,
        ),
      ],
    ));
  }
}
