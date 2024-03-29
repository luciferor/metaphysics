import 'dart:ui';

import 'package:flutter/material.dart';

class Base extends StatefulWidget {
  const Base({Key? key, this.childs}) : super(key: key);
  final Widget? childs;
  @override
  // ignore: library_private_types_in_public_api
  _BaseState createState() => _BaseState();
}

class _BaseState extends State<Base> with SingleTickerProviderStateMixin {
  //logo旋转动画控制器
  // late AnimationController _logoRotateController;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // double rpx = MediaQuery.of(context).size.width / 750;
    // double tp = MediaQuery.of(context).padding.top;
    // double bp = MediaQuery.of(context).padding.bottom;
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        // Image(
        //   image: const AssetImage('assets/images/35127ad98a61.png'),
        //   fit: BoxFit.cover,
        //   width: MediaQuery.of(context).size.width, //整个屏幕的宽度
        //   height: MediaQuery.of(context).size.height, //整个屏幕的高度
        // ),
        //模糊动画，暂时注释，损耗虚拟机资源
        ClipRect(
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
          child: Opacity(
            opacity: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 245, 245, 245),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color.fromARGB(255, 248, 204, 249),
                    Color.fromARGB(255, 66, 115, 237),
                  ],
                ),
              ),
            ),
          ),
        )),
        Container(
          constraints: const BoxConstraints.expand(),
          padding: const EdgeInsets.all(0),
          child: widget.childs,
        ),
      ],
    ));
  }
}
