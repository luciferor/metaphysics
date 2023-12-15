import 'dart:ui';

import 'package:first_flutter_app/components/blur.dart';
import 'package:flutter/material.dart';

class Msgs extends StatefulWidget {
  const Msgs({ Key? key }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MsgsState createState() => _MsgsState();
}

class _MsgsState extends State<Msgs> {
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width /750;
    return Container(
        alignment: Alignment.topLeft,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    width:100*rpx,
                    height:100*rpx,
                    child: const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage('https://img0.baidu.com/it/u=2699322616,853950993&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500'),
                    ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(20*rpx,20*rpx,0,0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(30*rpx)),
                        child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 50 * rpx, sigmaY: 50 * rpx),
                        child: Opacity(
                            opacity: 0.5,
                            child: Container(
                                width: MediaQuery.of(context).size.width*rpx,
                                // height: MediaQuery.of(context).size.height,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30 * rpx),
                                    border: Border.all(
                                        color: const Color.fromARGB(150, 255, 255, 255), width: 1),
                                    ),
                                    child: Padding(
                                        padding:EdgeInsets.all(20*rpx),
                                        child: Text(
                                            '我是只能助手抗裂砂浆地方啦时间久了是撒老大发撒老大',
                                            style: TextStyle(
                                                color:Colors.white,
                                                fontSize: 30*rpx,
                                                fontWeight:FontWeight.bold
                                            ),
                                        ),
                                    )
                            ),
                        ),
                        ),
                    ),
                ),
            ],
        ),
    );
  }
}