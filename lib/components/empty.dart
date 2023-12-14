import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Empty extends StatelessWidget {
  const Empty({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 400 * rpx,
            height: 400 * rpx,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 100 * rpx),
            child: Image.asset('assets/images/8e3a09875693fb.png'),
          ),
          Container(
            alignment: Alignment.center,
            child: Shimmer.fromColors(
              baseColor: Colors.white70,
              highlightColor: Colors.white,
              child: Text(
                'ChatGPT!',
                style: TextStyle(
                  fontSize: 72 * rpx,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
