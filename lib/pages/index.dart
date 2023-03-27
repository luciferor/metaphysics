import 'dart:ui';
import 'package:first_flutter_app/pages/detail.dart';
import 'package:first_flutter_app/pages/mine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:first_flutter_app/components/card.dart';
// import 'package:first_flutter_app/classes/https.dart';
// import 'package:first_flutter_app/classes/res.dart';
import 'package:first_flutter_app/components/base.dart';
import 'package:first_flutter_app/components/apps.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

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
      'http://oss.dsnbc.com/images/20211126/b6b959667346a5b070bbce45f355f08b.jpeg',
      'http://oss.dsnbc.com/images/20220214/11913bc902150f143b1c70378370a0ca.png',
      'http://oss.dsnbc.com/images/20220610/2562abbde6fd28188277d513adb15af3.png',
      'http://oss.dsnbc.com/images/20211215/656bcd5fbf7d63265f8768580ef9a6f5.jpeg',
      'http://oss.dsnbc.com/images/20211126/b6b959667346a5b070bbce45f355f08b.jpeg',
      'http://oss.dsnbc.com/images/20220214/11913bc902150f143b1c70378370a0ca.png',
      'http://oss.dsnbc.com/images/20220610/2562abbde6fd28188277d513adb15af3.png',
      'http://oss.dsnbc.com/images/20211215/656bcd5fbf7d63265f8768580ef9a6f5.jpeg',
      'http://oss.dsnbc.com/images/20211126/b6b959667346a5b070bbce45f355f08b.jpeg',
      'http://oss.dsnbc.com/images/20220214/11913bc902150f143b1c70378370a0ca.png',
      'http://oss.dsnbc.com/images/20220610/2562abbde6fd28188277d513adb15af3.png',
      'http://oss.dsnbc.com/images/20211215/656bcd5fbf7d63265f8768580ef9a6f5.jpeg',
      'http://oss.dsnbc.com/images/20211126/b6b959667346a5b070bbce45f355f08b.jpeg',
      'http://oss.dsnbc.com/images/20220214/11913bc902150f143b1c70378370a0ca.png',
      'http://oss.dsnbc.com/images/20220610/2562abbde6fd28188277d513adb15af3.png',
      'http://oss.dsnbc.com/images/20211215/656bcd5fbf7d63265f8768580ef9a6f5.jpeg',
      'http://oss.dsnbc.com/images/20211126/b6b959667346a5b070bbce45f355f08b.jpeg',
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
                                        color: Colors.black.withOpacity(0.1),
                                        offset: const Offset(0, 2),
                                        blurRadius: 30 * rpx,
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(
                                        20 * rpx, 0, 20 * rpx, 0),
                                    child: TextField(
                                      style: const TextStyle(
                                        color: Colors.white60,
                                      ),
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
                                        counterText: '',
                                      ),
                                      autofillHints: const Iterable.empty(),
                                      maxLength: 30,
                                      cursorColor: Colors.green,
                                    ),
                                  ),
                                ),
                              ),
                              Hero(
                                tag: 'avatar',
                                child: Container(
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
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/mine');
                                    },
                                    child: const CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      backgroundImage: NetworkImage(
                                          'https://img0.baidu.com/it/u=2699322616,853950993&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500'),
                                    ),
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
          // Container(
          //     color: Colors.red,
          //     width: MediaQuery.of(context).size.width,
          //     height: MediaQuery.of(context).size.height -
          //         tp -
          //         (370 * rpx),
          //     child: ListView(
          //         scrollDirection: Axis.vertical,
          //         children: _initCardCus())),
          // Container(
          //   color: Colors.blue,
          //   constraints: const BoxConstraints.expand(),
          //   child: GridView(
          //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 3),
          //     children: _initMenus().toList(),
          //   ),
          // ),
          Container(
            width: MediaQuery.of(context).size.width,
            height:
                ((MediaQuery.of(context).size.width - 150 * rpx) / 4) * 2 + 32,
            padding: EdgeInsets.fromLTRB(15 * rpx, 0, 15 * rpx, 0),
            child: const Apps(),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300 * rpx,
            padding: EdgeInsets.fromLTRB(30 * rpx, 0, 30 * rpx, 50 * rpx),
            child: Container(
              constraints: const BoxConstraints.expand(),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(40 * rpx)),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30 * rpx, 0, 30 * rpx, 0),
            color: Colors.transparent,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height -
                // MediaQuery.of(context).size.width -
                tp -
                bp -
                (((MediaQuery.of(context).size.width - 150 * rpx) / 4) * 2 +
                    32) -
                (530 * rpx),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(100 * rpx),
              ),
            ),
            // child: AnimationLimiter(
            //   child: GridView.builder(
            //     padding: EdgeInsets.fromLTRB(30 * rpx, 0, 30 * rpx, 0),
            //     itemCount: imgs.length,
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //         //横轴元素个数
            //         crossAxisCount: 3,
            //         //纵轴间距
            //         mainAxisSpacing: 30 * rpx,
            //         //横轴间距
            //         crossAxisSpacing: 30 * rpx,
            //         //子组件宽高长度比例
            //         childAspectRatio: 1.0),
            //     itemBuilder: (context, index) {
            //       return AnimationConfiguration.staggeredGrid(
            //         columnCount: imgs.length,
            //         position: index,
            //         duration: const Duration(milliseconds: 2375),
            //         child: SlideAnimation(
            //           verticalOffset: 50.0,
            //           child: ScaleAnimation(
            //             child: Stack(
            //               children: [
            //                 Container(
            //                   constraints: const BoxConstraints.expand(),
            //                   decoration: BoxDecoration(
            //                     color: Colors.transparent,
            //                     borderRadius: BorderRadius.circular(30 * rpx),
            //                   ),
            //                   child: renderRRect(context, rpx),
            //                 ),
            //                 Container(
            //                   padding: const EdgeInsets.all(0),
            //                   child: Center(
            //                     child: GestureDetector(
            //                       onTap: () {
            //                         Navigator.of(context).push(
            //                             CupertinoPageRoute(
            //                                 builder: (BuildContext context) =>
            //                                     const Mine()));
            //                       },
            //                       child: Stack(
            //                         children: [
            //                           Container(
            //                             constraints:
            //                                 const BoxConstraints.expand(),
            //                             child: ClipRRect(
            //                               borderRadius:
            //                                   BorderRadius.circular(40 * rpx),
            //                               child: Image(
            //                                 image: NetworkImage(imgs[index]),
            //                                 fit: BoxFit.cover,
            //                               ),
            //                             ),
            //                           ),
            //                           Positioned(
            //                             top: 10 * rpx,
            //                             right: 10 * rpx,
            //                             width: 60 * rpx,
            //                             height: 60 * rpx,
            //                             child: const Image(
            //                               image: AssetImage(
            //                                   'assets/images/others/binding.png'),
            //                               fit: BoxFit.fill,
            //                             ),
            //                           )
            //                         ],
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
            // child: SingleChildScrollView(
            //   padding: EdgeInsets.fromLTRB(15 * rpx, 0, 15 * rpx, 15 * rpx),
            //   child: Container(
            //     padding: EdgeInsets.all(30 * rpx),
            //     child: MasonryGridView.count(
            //       // 展示几列
            //       crossAxisCount: 2,
            //       // 元素总个数
            //       itemCount: imgs.length,
            //       // 单个子元素
            //       itemBuilder: (BuildContext context, int index) {
            //         return Container(
            //           child: Image(
            //             image: NetworkImage(imgs[index]),
            //             fit: BoxFit.fitHeight,
            //           ),
            //         );
            //       },
            //       // 纵向元素间距
            //       mainAxisSpacing: 30 * rpx,
            //       // 横向元素间距
            //       crossAxisSpacing: 30 * rpx,
            //       //本身不滚动，让外面的singlescrollview来滚动
            //       physics: const NeverScrollableScrollPhysics(),
            //       shrinkWrap: true, //收缩，让元素宽度自适应
            //     ),
            //   ),
            // ),
            //此处是动画
            // child: AnimationLimiter(
            //   child: ListView.builder(
            //     padding: EdgeInsets.fromLTRB(15 * rpx, 0, 15 * rpx, 0),
            //     itemCount: imgs.length,
            //     itemBuilder: (context, index) {
            //       return AnimationConfiguration.staggeredList(
            //         position: index,
            //         duration: const Duration(milliseconds: 1975),
            //         child: SlideAnimation(
            //           //滑动动画
            //           verticalOffset: 200.0,
            //           child: ScaleAnimation(
            //             //渐隐渐现动画
            //             child: Container(
            //               margin: EdgeInsets.all(15 * rpx),
            //               height: 200,
            //               decoration: BoxDecoration(
            //                   color: Theme.of(context).primaryColor,
            //                   borderRadius: BorderRadius.circular(80 * rpx)),
            //             ),
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
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
                color: Colors.white.withAlpha(80),
                // color: Color.fromRGBO(
                //     Random().nextInt(256),
                //     Random().nextInt(256),
                //     Random().nextInt(256),
                //     0.8), //color: Colors.blue.withAlpha(80),
                borderRadius: BorderRadius.circular(40 * rpx),
              ),
            ),
          ),
        ));
  }
}
