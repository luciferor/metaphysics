import 'package:first_flutter_app/components/ani.dart';
import 'package:first_flutter_app/components/blur.dart';
import 'package:first_flutter_app/pages/Setting.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/components/base.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

class Mine extends StatefulWidget {
  const Mine({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MineState createState() => _MineState();
}

class _MineState extends State<Mine> {
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    double w = MediaQuery.of(context).size.width;
    double tp = MediaQuery.of(context).padding.top;
    double bp = MediaQuery.of(context).padding.bottom;
    return Base(
      childs: Stack(
        children: [
          // Image(
          //   width: w,
          //   height: (500 * rpx) + tp,
          //   fit: BoxFit.cover,
          //   image: const AssetImage('assets/images/a6b0e5d.png'),
          // ),
          // Container(
          //   height: (500 * rpx) + tp,
          //   child: Blur(
          //     rpx: rpx,
          //     radius: 0,
          //   ),
          // ),
          Container(
            constraints: const BoxConstraints.expand(),
            color: Colors.transparent,
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  padding:
                      EdgeInsets.fromLTRB(40 * rpx, tp, 40 * rpx, 40 * rpx),
                  height: (400 * rpx) + tp,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 150 * rpx,
                        height: 150 * rpx,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150 * rpx),
                          border: Border.all(
                            color: const Color.fromARGB(200, 247, 249, 255),
                            width: 10 * rpx,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(150 * rpx),
                          child: const Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://img0.baidu.com/it/u=2699322616,853950993&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500'),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.fromLTRB(0, 30 * rpx, 0, 30 * rpx),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 20 * rpx, 0),
                              child: Shimmer.fromColors(
                                baseColor: Colors.black54,
                                highlightColor: Colors.white,
                                child: Text(
                                  '凝固壳',
                                  style: TextStyle(
                                      fontSize: 36 * rpx,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Ani(
                              radius: 0,
                              pages: const Setting(),
                              child: Container(
                                width: 50 * rpx,
                                height: 50 * rpx,
                                padding: EdgeInsets.all(5 * rpx),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 57, 76, 247),
                                  borderRadius: BorderRadius.circular(20 * rpx),
                                ),
                                child: SvgPicture.asset(
                                  'assets/images/icons/editmine.svg',
                                  width: 40 * rpx,
                                  height: 40 * rpx,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 400 * rpx,
                  color: Colors.transparent,
                  child: Padding(
                    padding:
                        EdgeInsets.fromLTRB(40 * rpx, 0, 40 * rpx, 20 * rpx),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                0, 15 * rpx, 15 * rpx, 15 * rpx),
                            child: Container(
                              color: Colors.transparent,
                              constraints: const BoxConstraints.expand(),
                              child: Column(children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(0, 0, 0, 15 * rpx),
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(40 * rpx),
                                            boxShadow: [
                                              BoxShadow(
                                                offset: const Offset(0.0, 0.0),
                                                blurRadius: 15 * rpx,
                                                spreadRadius: 10 * rpx,
                                                color: const Color.fromARGB(
                                                    50, 177, 106, 255),
                                              )
                                            ],
                                            gradient: const LinearGradient(
                                              begin: Alignment.bottomRight,
                                              end: Alignment.topLeft,
                                              colors: [
                                                Color.fromARGB(
                                                    255, 134, 49, 255),
                                                Color.fromARGB(
                                                    255, 177, 106, 255),
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
                                        padding: EdgeInsets.fromLTRB(
                                            0, 15 * rpx, 15 * rpx, 0),
                                        child: Stack(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        40 * rpx),
                                                boxShadow: [
                                                  BoxShadow(
                                                    offset:
                                                        const Offset(0.0, 0.0),
                                                    blurRadius: 15 * rpx,
                                                    spreadRadius: 10 * rpx,
                                                    color: const Color.fromARGB(
                                                        50, 77, 206, 255),
                                                  )
                                                ],
                                                gradient: const LinearGradient(
                                                  begin: Alignment.bottomRight,
                                                  end: Alignment.topLeft,
                                                  colors: [
                                                    Color.fromARGB(
                                                        255, 49, 133, 255),
                                                    Color.fromARGB(
                                                        255, 77, 206, 255),
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
                                        padding: EdgeInsets.fromLTRB(
                                            15 * rpx, 15 * rpx, 0, 0),
                                        child: Stack(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        40 * rpx),
                                                boxShadow: [
                                                  BoxShadow(
                                                    offset:
                                                        const Offset(0.0, 0.0),
                                                    blurRadius: 15 * rpx,
                                                    spreadRadius: 10 * rpx,
                                                    color: const Color.fromARGB(
                                                        50, 207, 255, 193),
                                                  )
                                                ],
                                                gradient: const LinearGradient(
                                                  begin: Alignment.bottomRight,
                                                  end: Alignment.topLeft,
                                                  colors: [
                                                    Color.fromARGB(
                                                        255, 51, 255, 28),
                                                    Color.fromARGB(
                                                        255, 207, 255, 193),
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
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                15 * rpx, 15 * rpx, 0, 15 * rpx),
                            child: Container(
                              color: Colors.transparent,
                              constraints: const BoxConstraints.expand(),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 0, 15 * rpx, 15 * rpx),
                                            child: Stack(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40 * rpx),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        offset: const Offset(
                                                            0.0, 0.0),
                                                        blurRadius: 15 * rpx,
                                                        spreadRadius: 10 * rpx,
                                                        color: const Color
                                                            .fromARGB(
                                                            50, 255, 154, 154),
                                                      )
                                                    ],
                                                    gradient:
                                                        const LinearGradient(
                                                      begin:
                                                          Alignment.bottomRight,
                                                      end: Alignment.topLeft,
                                                      colors: [
                                                        Color.fromARGB(
                                                            255, 255, 55, 55),
                                                        Color.fromARGB(
                                                            255, 255, 154, 154),
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
                                            padding: EdgeInsets.fromLTRB(
                                                15 * rpx, 0, 0, 15 * rpx),
                                            child: Stack(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40 * rpx),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        offset: const Offset(
                                                            0.0, 0.0),
                                                        blurRadius: 15 * rpx,
                                                        spreadRadius: 10 * rpx,
                                                        color: const Color
                                                            .fromARGB(
                                                            50, 255, 243, 198),
                                                      )
                                                    ],
                                                    gradient:
                                                        const LinearGradient(
                                                      begin:
                                                          Alignment.bottomRight,
                                                      end: Alignment.topLeft,
                                                      colors: [
                                                        Color.fromARGB(
                                                            255, 231, 212, 5),
                                                        Color.fromARGB(
                                                            255, 255, 243, 198),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          0, 15 * rpx, 0, 0),
                                      child: Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      40 * rpx),
                                              boxShadow: [
                                                BoxShadow(
                                                  offset:
                                                      const Offset(0.0, 0.0),
                                                  blurRadius: 15 * rpx,
                                                  spreadRadius: 10 * rpx,
                                                  color: const Color.fromARGB(
                                                      50, 255, 139, 226),
                                                )
                                              ],
                                              gradient: const LinearGradient(
                                                begin: Alignment.bottomRight,
                                                end: Alignment.topLeft,
                                                colors: [
                                                  Color.fromARGB(
                                                      255, 255, 55, 156),
                                                  Color.fromARGB(
                                                      255, 255, 139, 226),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(40 * rpx, 0, 40 * rpx, 40 * rpx),
                  child: Container(
                    height: 150 * rpx,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40 * rpx),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 15 * rpx,
                          spreadRadius: 10 * rpx,
                          color: const Color.fromARGB(10, 0, 0, 0),
                        )
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40 * rpx),
                      child: const Image(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/20231221.png'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      40 * rpx, 30 * rpx, 40 * rpx, 40 * rpx),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 30 * rpx),
                        height: 100 * rpx,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25 * rpx),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 15 * rpx,
                              spreadRadius: 10 * rpx,
                              color: const Color.fromARGB(10, 0, 0, 0),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 100 * rpx,
                              height: 100 * rpx,
                              padding: EdgeInsets.all(20 * rpx),
                              alignment: Alignment.center,
                              child: SvgPicture.asset(
                                'assets/images/icons/grade.svg',
                                width: 60 * rpx,
                                height: 60 * rpx,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '会员中心',
                                  style: TextStyle(
                                    fontSize: 30 * rpx,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 100 * rpx,
                              height: 100 * rpx,
                              padding: EdgeInsets.all(10 * rpx),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 30 * rpx),
                        height: 100 * rpx,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25 * rpx),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 15 * rpx,
                              spreadRadius: 10 * rpx,
                              color: const Color.fromARGB(10, 0, 0, 0),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 100 * rpx,
                              height: 100 * rpx,
                              padding: EdgeInsets.all(20 * rpx),
                              alignment: Alignment.center,
                              child: SvgPicture.asset(
                                'assets/images/icons/collect.svg',
                                width: 60 * rpx,
                                height: 60 * rpx,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '收藏夹',
                                  style: TextStyle(
                                    fontSize: 30 * rpx,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 100 * rpx,
                              height: 100 * rpx,
                              padding: EdgeInsets.all(10 * rpx),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 30 * rpx),
                        height: 100 * rpx,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25 * rpx),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 15 * rpx,
                              spreadRadius: 10 * rpx,
                              color: const Color.fromARGB(10, 0, 0, 0),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 100 * rpx,
                              height: 100 * rpx,
                              padding: EdgeInsets.all(20 * rpx),
                              alignment: Alignment.center,
                              child: SvgPicture.asset(
                                'assets/images/icons/card.svg',
                                width: 60 * rpx,
                                height: 60 * rpx,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '排行榜',
                                  style: TextStyle(
                                    fontSize: 30 * rpx,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 100 * rpx,
                              height: 100 * rpx,
                              padding: EdgeInsets.all(10 * rpx),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 30 * rpx),
                        height: 100 * rpx,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25 * rpx),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 15 * rpx,
                              spreadRadius: 10 * rpx,
                              color: const Color.fromARGB(10, 0, 0, 0),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 100 * rpx,
                              height: 100 * rpx,
                              padding: EdgeInsets.all(20 * rpx),
                              alignment: Alignment.center,
                              child: SvgPicture.asset(
                                'assets/images/icons/notice.svg',
                                width: 60 * rpx,
                                height: 60 * rpx,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '消息',
                                  style: TextStyle(
                                    fontSize: 30 * rpx,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 100 * rpx,
                              height: 100 * rpx,
                              padding: EdgeInsets.all(10 * rpx),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 30 * rpx),
                        height: 100 * rpx,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25 * rpx),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 15 * rpx,
                              spreadRadius: 10 * rpx,
                              color: const Color.fromARGB(10, 0, 0, 0),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 100 * rpx,
                              height: 100 * rpx,
                              padding: EdgeInsets.all(20 * rpx),
                              alignment: Alignment.center,
                              child: SvgPicture.asset(
                                'assets/images/icons/setting.svg',
                                width: 60 * rpx,
                                height: 60 * rpx,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '设置',
                                  style: TextStyle(
                                    fontSize: 30 * rpx,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 100 * rpx,
                              height: 100 * rpx,
                              padding: EdgeInsets.all(10 * rpx),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.fromLTRB(0, 30 * rpx, 0, 0),
                        child: Text(
                          '荧惑科技集团',
                          style: TextStyle(
                            fontSize: 20 * rpx,
                            color: Colors.black12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
