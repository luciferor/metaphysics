import 'package:flutter/material.dart';
import 'package:first_flutter_app/components/base.dart';

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
    double tp = MediaQuery.of(context).padding.top;
    double bp = MediaQuery.of(context).padding.bottom;
    return Base(
        childs: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding:
              EdgeInsets.fromLTRB(30 * rpx, tp + 100 * rpx, 30 * rpx, 30 * rpx),
          child: Column(children: [
            Center(
              child: Hero(
                tag: 'avatar',
                child: Container(
                  width: 200 * rpx,
                  height: 200 * rpx,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100 * rpx),
                    border: Border.all(color: Colors.white30, width: 5 * rpx),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.7),
                        offset: const Offset(0, 2),
                        blurRadius: 80 * rpx,
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(
                          'https://img0.baidu.com/it/u=2699322616,853950993&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500'),
                    ),
                  ),
                ),
              ),
            )
          ]),
        )
      ],
    ));
  }
}
