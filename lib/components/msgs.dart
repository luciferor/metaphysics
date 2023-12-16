import 'package:first_flutter_app/components/blur.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Msgs extends StatefulWidget {
  const Msgs(Key? key, this.data) : super(key: key);
  final List<Map<String, dynamic>> data;
  @override
  // ignore: library_private_types_in_public_api
  _MsgsState createState() => _MsgsState();
}

class _MsgsState extends State<Msgs> {
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    return Container(
      alignment: Alignment.topLeft,
      child: ListView(
        children: [
          rendereLeftMsg(rpx),
          rendereRightMsg(rpx),
        ],
      ),
    );
  }

  Widget rendereLeftMsg(double rpx) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 20 * rpx, 0, 20 * rpx),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 100 * rpx,
            height: 100 * rpx,
            child: GestureDetector(
              onTap: () {},
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage:
                    AssetImage('../assets/images/8e3a09875693fb.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20 * rpx, 0, 120 * rpx, 0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30 * rpx),
                      bottomLeft: Radius.circular(30 * rpx),
                      bottomRight: Radius.circular(30 * rpx),
                    ),
                    child: Container(
                      color: const Color.fromARGB(200, 7, 216, 25),
                      child: Padding(
                        padding: EdgeInsets.all(20 * rpx),
                        child: Shimmer.fromColors(
                          baseColor: Colors.white70,
                          highlightColor: Colors.white,
                          child: Text(
                            '我是只能助手抗裂砂浆地方啦时间久了是撒老大发撒老大',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30 * rpx,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
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

  Widget rendereRightMsg(double rpx) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 20 * rpx, 0, 20 * rpx),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(120 * rpx, 0, 20 * rpx, 0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30 * rpx),
                      bottomLeft: Radius.circular(30 * rpx),
                      bottomRight: Radius.circular(30 * rpx),
                    ),
                    child: Container(
                      color: const Color.fromARGB(200, 24, 74, 240),
                      child: Padding(
                        padding: EdgeInsets.all(20 * rpx),
                        child: Shimmer.fromColors(
                          baseColor: Colors.white70,
                          highlightColor: Colors.white,
                          child: Text(
                            '我是只能助手抗裂砂浆地方啦时间久了是撒老大发撒老大',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30 * rpx,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 100 * rpx,
            height: 100 * rpx,
            child: GestureDetector(
              onTap: () {},
              child: const CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(
                    'https://img0.baidu.com/it/u=2699322616,853950993&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
