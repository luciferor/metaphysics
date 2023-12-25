import 'package:flutter/material.dart';

class Aiani extends StatelessWidget {
  Aiani({Key? key, required this.loading}) : super(key: key);
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    return SizedBox(
      width: loading ? 0 : 80 * rpx,
      height: loading ? 0 : 80 * rpx,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30 * rpx),
        child: Image.asset('assets/images/aia.gif'),
      ),
    );
  }
}
