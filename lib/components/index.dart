import 'package:card_swiper/card_swiper.dart';
import 'package:first_flutter_app/components/ani.dart';
import 'package:first_flutter_app/components/apps.dart';
import 'package:first_flutter_app/pages/ai.dart';
import 'package:first_flutter_app/pages/mine.dart';
import 'package:flutter/material.dart';
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
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
              20 * rpx, MediaQuery.of(context).padding.top, 20 * rpx, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15 * rpx, 0, 0, 0),
                child: SizedBox(
                  width: 60 * rpx,
                  height: 120 * rpx,
                  child: Center(
                    child: Ani(
                      radius: 30,
                      pages: const Ai(),
                      child: Container(
                        color: Colors.transparent,
                        width: 60 * rpx,
                        height: 60 * rpx,
                        alignment: Alignment.center,
                        child: Image.asset('assets/images/8e3a09875693fb.png'),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(15 * rpx, 0, 15 * rpx, 0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 120 * rpx,
                  child: Shimmer.fromColors(
                    baseColor: Colors.black87,
                    highlightColor: Colors.white,
                    child: Text(
                      '荧惑Todo',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 38 * rpx,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              )),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 15 * rpx, 0),
                child: Ani(
                  radius: 100,
                  pages: const Mine(),
                  child: Container(
                      width: 100 * rpx,
                      height: 100 * rpx,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100 * rpx),
                        border:
                            Border.all(color: Colors.white30, width: 5 * rpx),
                      ),
                      child: const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(
                            'https://img0.baidu.com/it/u=2699322616,853950993&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500'),
                      )),
                ),
              ),
            ],
          ),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(0, 30 * rpx, 0, 30 * rpx),
            child: Container(
              alignment: Alignment.centerRight,
              height: 300 * rpx,
              child: Swiper(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(30 * rpx),
                    child: Container(
                        alignment: Alignment.centerRight,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30 * rpx),
                          child: const Ani(
                            radius: 30,
                            pages: Mine(),
                            child: Image(
                              image: AssetImage('assets/images/4ce8324fe.jpeg'),
                            ),
                          ),
                        )),
                  );
                },
                itemWidth: MediaQuery.of(context).size.width - 80 * rpx,
                layout: SwiperLayout.STACK,
              ),
            )),
        Container(
          color: Colors.transparent,
          height: 400 * rpx,
          child: const Apps(),
        ),
      ],
    );
  }
}
