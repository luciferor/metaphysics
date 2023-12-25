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
          Image.asset('assets/images/aia.gif'),
          Container(
            alignment: Alignment.center,
            child: Shimmer.fromColors(
              baseColor: const Color.fromARGB(221, 9, 53, 247),
              highlightColor: const Color.fromARGB(255, 0, 255, 213),
              child: Text(
                'Ai小惑!',
                style: TextStyle(
                  fontSize: 72 * rpx,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const Text('您的专属智能助手~'),
        ],
      ),
    );
  }
}
