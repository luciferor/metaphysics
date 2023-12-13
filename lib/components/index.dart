import 'dart:ui';
import 'package:first_flutter_app/components/apps.dart';
import 'package:first_flutter_app/components/blur.dart';
import 'package:flutter/material.dart';

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
    return Stack(
      children: [
        Blur(
          rpx: rpx,
          radius: 40,
          widget: const Apps(),
        ),
      ],
    );
  }
}
