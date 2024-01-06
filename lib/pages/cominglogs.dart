import 'dart:ui';

import 'package:flutter/material.dart';

class Cominglogs extends StatefulWidget {
  const Cominglogs({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CominglogsState createState() => _CominglogsState();
}

class _CominglogsState extends State<Cominglogs> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
          image: const AssetImage(
              'assets/images/59aaf55f7919585b29ff6a4cccd80770.jpg'),
        ),
        Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(100),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: const DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
            ),
          ),
        ),
      ],
    );
  }
}
