import 'dart:ui';
import 'package:first_flutter_app/pages/detail.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:first_flutter_app/components/card.dart';
// import 'package:first_flutter_app/classes/https.dart';
// import 'package:first_flutter_app/classes/res.dart';
import 'package:first_flutter_app/pages/test.dart';

class Homie extends StatefulWidget {
  const Homie({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _HomieState createState() => _HomieState();
}

class _HomieState extends State<Homie> {
  bool _slowAnimations = false;

  @override
  void initState() {
    super.initState();
    // Https https = Https('https://xapi.dsnbc.com/test', {});
    // https.responseData();
  }

  @override
  Widget build(BuildContext context) {
    List arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    double rpx = MediaQuery.of(context).size.width / 750;
    double tp = MediaQuery.of(context).padding.top;
    double bp = MediaQuery.of(context).padding.bottom;

    List<Widget> _initCardCus() {
      var tempList = arr.map((e) {
        return CardCus(
          onTap: () {
            print('object $e');
            Navigator.pushNamed(context, '/detail');
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
              image: const AssetImage(
                  'assets/images/9c4ed027180fa668626b7aa0aea7f141.jpeg'),
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width, //整个屏幕的宽度
              height: MediaQuery.of(context).size.height, //整个屏幕的高度
            ),
            // ClipRect(
            //     child: BackdropFilter(
            //   filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            //   child: Opacity(
            //     opacity: 0.5,
            //     child: Container(
            //       width: MediaQuery.of(context).size.width,
            //       height: MediaQuery.of(context).size.height,
            //       decoration: BoxDecoration(
            //         color: Colors.grey.shade300,
            //       ),
            //     ),
            //   ),
            // )),
            Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height:
                          tp + 250 * rpx, //MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(80 * rpx),
                            bottomLeft: Radius.circular(80 * rpx)),
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
                                    50 * rpx, tp, 50 * rpx, bp),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          0, 50 * rpx, 0, 50 * rpx),
                                      child: Flex(
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
                                              iconSize: 40 * rpx,
                                              padding: EdgeInsets.zero,
                                              color: Colors.grey,
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
                                                color: Colors.white60,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(60 * rpx)),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.1),
                                                    offset: const Offset(0, 2),
                                                    blurRadius: 60 * rpx,
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
                                                        size: 30 * rpx,
                                                      ),
                                                      iconColor: Colors.black,
                                                      hintText: '搜索关键字',
                                                      border: InputBorder.none,
                                                      filled: false),
                                                  autofillHints:
                                                      const Iterable.empty(),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 60 * rpx,
                                            height: 60 * rpx,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      60 * rpx),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.2),
                                                  offset: const Offset(0, 2),
                                                  blurRadius: 60 * rpx,
                                                  spreadRadius: 0,
                                                )
                                              ],
                                            ),
                                            child: const CircleAvatar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              backgroundImage: NetworkImage(
                                                  'https://img2.baidu.com/it/u=2421090168,324781765&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500'),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    // Text(
                                    //   '玄门正宗',
                                    //   style: TextStyle(
                                    //       fontSize: 48 * rpx,
                                    //       fontWeight: FontWeight.bold),
                                    // ),
                                    // FloatingActionButton(
                                    //   onPressed: () {
                                    //     // Navigator.pushNamed(context, '/detail');
                                    //     Navigator.of(context).push(
                                    //       MaterialPageRoute<void>(
                                    //         builder: (BuildContext context) {
                                    //           return const OpenContainerTransformDemo();
                                    //         },
                                    //       ),
                                    //     );
                                    //   },
                                    //   child: const Text('跳转'),
                                    // )
                                  ],
                                ),
                              )),
                        ),
                      )),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height:
                          MediaQuery.of(context).size.height - tp - (250 * rpx),
                      child: ListWheelScrollView(
                          itemExtent: 400 * rpx,
                          diameterRatio: 1,
                          perspective: 0.003,
                          offAxisFraction: 0,
                          useMagnifier: false,
                          magnification: 10,
                          squeeze: 1.5,
                          children: _initCardCus()),
                    ),
                  ],
                )),
          ],
        ));
  }
}
