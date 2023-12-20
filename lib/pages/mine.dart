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
      childs: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(
                40 * rpx, tp + (100 * rpx), 40 * rpx, 40 * rpx),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 10 * rpx, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100 * rpx,
                          height: 100 * rpx,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 247, 249, 255),
                            borderRadius: BorderRadius.circular(100 * rpx),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              100 * rpx,
                            ),
                            child: const Image(
                              image: NetworkImage(
                                  'https://img0.baidu.com/it/u=2699322616,853950993&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500'),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(20 * rpx, 0, 0, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '土豆军师',
                                        style: TextStyle(
                                          fontSize: 28 * rpx,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        'Lv25',
                                        style: TextStyle(
                                          fontSize: 20 * rpx,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.amber,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '1000000 岁 男',
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 28 * rpx,
                                  ),
                                ),
                                Text(
                                  '标签(奋斗中)   等级（lv25）  会员(未开通)',
                                  style: TextStyle(
                                    fontSize: 20 * rpx,
                                    color: Colors.black54,
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
                Container(
                  alignment: Alignment.center,
                  width: 150 * rpx,
                  height: 60 * rpx,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 49, 52, 255),
                    borderRadius: BorderRadius.circular(50 * rpx),
                  ),
                  child: Text(
                    '编辑资料',
                    style: TextStyle(
                      fontSize: 24 * rpx,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(40 * rpx, 0, 40 * rpx, 0),
            child: Container(
              height: 200 * rpx,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40 * rpx),
                  topRight: Radius.circular(40 * rpx),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '12',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 49 * rpx,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '学分',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 28 * rpx,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '12',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 49 * rpx,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '时长',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 28 * rpx,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ' 80%',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 49 * rpx,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            ' 完成度',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 28 * rpx,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '12',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 49 * rpx,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '计划中',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 28 * rpx,
                              fontWeight: FontWeight.bold,
                            ),
                          )
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
    );
  }
}
