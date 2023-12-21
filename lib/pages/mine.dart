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
          Image(
            width: w,
            height: (500 * rpx) + tp,
            fit: BoxFit.cover,
            image: const AssetImage('assets/images/a6b0e5d.png'),
          ),
          Container(
            height: (500 * rpx) + tp,
            child: Blur(
              rpx: rpx,
              radius: 0,
            ),
          ),
          Container(
            constraints: const BoxConstraints.expand(),
            color: Colors.transparent,
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  padding:
                      EdgeInsets.fromLTRB(40 * rpx, tp, 40 * rpx, 40 * rpx),
                  height: (500 * rpx) + tp,
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
                                baseColor: Colors.white60,
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
                  height: 300 * rpx,
                  color: Colors.amber,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
