import 'dart:ui';

import 'package:flutter/material.dart';

class Base extends StatefulWidget {
  const Base({Key? key, this.childs}) : super(key: key);
  final Widget? childs;
  @override
  // ignore: library_private_types_in_public_api
  _BaseState createState() => _BaseState();
}

class _BaseState extends State<Base> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // double rpx = MediaQuery.of(context).size.width / 750;
    // double tp = MediaQuery.of(context).padding.top;
    // double bp = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            constraints: const BoxConstraints.expand(),
            child: SingleChildScrollView(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: widget.childs,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
