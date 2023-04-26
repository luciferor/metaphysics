import 'dart:math';
import 'dart:ui';
import 'package:first_flutter_app/components/ani.dart';
import 'package:first_flutter_app/pages/mine.dart';
import 'package:flutter/material.dart';
// import 'package:first_flutter_app/classes/https.dart';
// import 'package:first_flutter_app/classes/res.dart';
import 'package:first_flutter_app/components/base.dart';
import 'package:first_flutter_app/components/apps.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Homie extends StatefulWidget {
  const Homie({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _HomieState createState() => _HomieState();
}

class _HomieState extends State<Homie> with SingleTickerProviderStateMixin {
  //logo旋转动画控制器
  late AnimationController _logoRotateController;

  @override
  void initState() {
    super.initState();
    // Https https = Https('https://xapi.dsnbc.com/test', {});
    // https.responseData();

    //初始化logo旋转控制器
    _logoRotateController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    List arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    double rpx = MediaQuery.of(context).size.width / 750;
    double tp = MediaQuery.of(context).padding.top;
    double bp = MediaQuery.of(context).padding.bottom;

    return Base(
      childs: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: tp + (120 * rpx), //MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(80 * rpx),
                bottomLeft: Radius.circular(80 * rpx),
              ),
            ),
            child: ClipRect(
                child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0 * rpx, sigmaY: 0 * rpx),
              child: Opacity(
                opacity: 1,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent, //Colors.white.withAlpha(100),
                      borderRadius: BorderRadius.circular(80 * rpx),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(30 * rpx, tp, 30 * rpx, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 60 * rpx,
                                height: 60 * rpx,
                                padding: const EdgeInsets.all(0.0),
                                color: Colors.transparent,
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.reorder,
                                  ),
                                  iconSize: 50 * rpx,
                                  padding: EdgeInsets.zero,
                                  color: Colors.white30,
                                  alignment: Alignment.centerLeft,
                                  onPressed: () {},
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 80 * rpx,
                                  margin: EdgeInsets.fromLTRB(
                                      20 * rpx, 0, 20 * rpx, 0),
                                  decoration: BoxDecoration(
                                    color: Colors.white10,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(60 * rpx)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        offset: const Offset(0, 2),
                                        blurRadius: 30 * rpx,
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        constraints:const BoxConstraints.expand(),
                                        decoration: BoxDecoration(
                                          borderRadius:BorderRadius.circular(50 * rpx),
                                        ),
                                        child: renderRRect(context, rpx),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            20 * rpx, 0, 20 * rpx, 0),
                                        child: TextField(
                                          style:const TextStyle(
                                            color: Colors.white60,
                                          ),
                                          decoration: InputDecoration(
                                            icon: Icon(
                                              Icons.search,
                                              size: 40 * rpx,
                                            ),
                                            iconColor: Colors.white30,
                                            hintText: '搜索关键字',
                                            hintStyle:const TextStyle(
                                              color: Colors.white38,),
                                            border: InputBorder.none,
                                            counterText: '',
                                            fillColor: Colors.red
                                          ),
                                          autofillHints: Iterable.empty(),
                                          maxLength: 30,
                                          cursorColor: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 70 * rpx,
                                height: 70 * rpx,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white30, width: 5 * rpx),
                                  borderRadius:
                                      BorderRadius.circular(80 * rpx),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.green.withOpacity(0.2),
                                      offset: const Offset(0, 2),
                                      blurRadius: 30 * rpx,
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: const Ani(
                                  pages:Mine(),
                                  child:CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage('https://img0.baidu.com/it/u=2699322616,853950993&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            )),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height:
                ((MediaQuery.of(context).size.width - 150 * rpx) / 4) * 2 + 32,
            padding: EdgeInsets.fromLTRB(15 * rpx, 0, 15 * rpx, 0),
            child: const Apps(),
          ),
          // Container(
          //   width: MediaQuery.of(context).size.width,
          //   height: 300 * rpx,
          //   padding: EdgeInsets.fromLTRB(30 * rpx, 0, 30 * rpx, 50 * rpx),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Expanded(
          //         child: Padding(
          //           padding: EdgeInsets.fromLTRB(0, 0, 15 * rpx, 0),
          //           child: Stack(
          //             children: [
          //               Container(
          //                 decoration: BoxDecoration(
          //                   color: Colors.transparent,
          //                   borderRadius: BorderRadius.circular(20 * rpx),
          //                 ),
          //                 child: renderRRect(context, rpx),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       Expanded(
          //         child: Padding(
          //           padding: EdgeInsets.fromLTRB(15 * rpx, 0, 0, 0),
          //           child: Stack(
          //             children: [
          //               Container(
          //                 decoration: BoxDecoration(
          //                   color: Colors.transparent,
          //                   borderRadius: BorderRadius.circular(20 * rpx),
          //                 ),
          //                 child: renderRRect(context, rpx),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Container(
          //   padding: EdgeInsets.fromLTRB(30 * rpx, 0, 30 * rpx, 0),
          //   color: Colors.transparent,
          //   width: MediaQuery.of(context).size.width,
          //   height: MediaQuery.of(context).size.height -
          //       // MediaQuery.of(context).size.width -
          //       tp -
          //       bp -
          //       (((MediaQuery.of(context).size.width - 150 * rpx) / 4) * 2 +
          //           32) -
          //       (550 * rpx),
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Colors.transparent,
          //       borderRadius: BorderRadius.circular(40 * rpx),
          //     ),
          //     child: renderRRect(context, rpx),
          //   ),
          // ),
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
                // color: Colors.white.withAlpha(80),
                color: Color.fromRGBO(
                    Random().nextInt(256),
                    Random().nextInt(256),
                    Random().nextInt(256),
                    0.8), //color: Colors.blue.withAlpha(80),
                borderRadius: BorderRadius.circular(40 * rpx),
              ),
            ),
          ),
        ));
  }
}
