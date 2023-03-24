import 'dart:ui';
import 'package:first_flutter_app/pages/detail.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:first_flutter_app/components/card.dart';
// import 'package:first_flutter_app/classes/https.dart';
// import 'package:first_flutter_app/classes/res.dart';
import 'package:first_flutter_app/pages/test.dart';
import 'package:card_swiper/card_swiper.dart';

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

    List<String> imgs = [
      'http://oss.dsnbc.com/images/20220214/11913bc902150f143b1c70378370a0ca.png',
      'http://oss.dsnbc.com/images/20220610/2562abbde6fd28188277d513adb15af3.png',
      'http://oss.dsnbc.com/images/20211215/656bcd5fbf7d63265f8768580ef9a6f5.jpeg',
      'http://oss.dsnbc.com/images/20211126/b6b959667346a5b070bbce45f355f08b.jpeg'
    ];

    // ignore: no_leading_underscores_for_local_identifiers
    List<Widget> _initCardCus() {
      var tempList = arr.map((e) {
        return CardCus(
          tag: e,
          onTap: () {
            Navigator.pushNamed(context, '/detail',
                arguments: <String, int>{'index': e});
          },
        );
      });
      return tempList.toList();
    }

    return Scaffold(
        backgroundColor: Colors.blue[50],
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
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height:
                          tp + (120 * rpx), //MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(80 * rpx),
                          bottomLeft: Radius.circular(80 * rpx),
                        ),
                      ),
                      child: ClipRect(
                          child: BackdropFilter(
                        filter:
                            ImageFilter.blur(sigmaX: 0 * rpx, sigmaY: 0 * rpx),
                        child: Opacity(
                          opacity: 1,
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors
                                    .transparent, //Colors.white.withAlpha(100),
                                borderRadius: BorderRadius.circular(80 * rpx),
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(
                                    30 * rpx, tp, 30 * rpx, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Flex(
                                      direction: Axis.horizontal,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                            onPressed: () {
                                              print('object');
                                            },
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
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                  offset: const Offset(0, 2),
                                                  blurRadius: 30 * rpx,
                                                  spreadRadius: 0,
                                                )
                                              ],
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  20 * rpx, 0, 20 * rpx, 0),
                                              child: TextField(
                                                decoration: InputDecoration(
                                                    icon: Icon(
                                                      Icons.search,
                                                      size: 40 * rpx,
                                                    ),
                                                    iconColor: Colors.white30,
                                                    hintText: '搜索关键字',
                                                    hintStyle: const TextStyle(
                                                        color: Colors.white38),
                                                    border: InputBorder.none,
                                                    filled: false),
                                                autofillHints:
                                                    const Iterable.empty(),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            width: 70 * rpx,
                                            height: 70 * rpx,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white30,
                                                  width: 5 * rpx),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      80 * rpx),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.green
                                                      .withOpacity(0.2),
                                                  offset: const Offset(0, 2),
                                                  blurRadius: 30 * rpx,
                                                  spreadRadius: 0,
                                                )
                                              ],
                                            ),
                                            child: Hero(
                                              tag: 'avatar',
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, '/mine');
                                                },
                                                child: const CircleAvatar(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  backgroundImage: NetworkImage(
                                                      'https://img0.baidu.com/it/u=2699322616,853950993&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500'),
                                                ),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      )),
                    ),
                    // Container(
                    //     color: Colors.red,
                    //     width: MediaQuery.of(context).size.width,
                    //     height: MediaQuery.of(context).size.height -
                    //         tp -
                    //         (370 * rpx),
                    //     child: ListView(
                    //         scrollDirection: Axis.vertical,
                    //         children: _initCardCus())),
                    Container(
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height -
                          // MediaQuery.of(context).size.width -
                          tp -
                          (120 * rpx),
                      child: ListView(children: [Text('列表')]),
                      // child: ListWheelScrollView(
                      //     itemExtent: 400 * rpx,
                      //     diameterRatio: 1,
                      //     perspective: 0.003,
                      //     offAxisFraction: 0,
                      //     useMagnifier: false,
                      //     magnification: 10,
                      //     squeeze: 1.5,
                      //     children: _initCardCus()),
                    ),
                  ],
                )),
          ],
        ));
  }
}
