import 'dart:ui';
import 'package:first_flutter_app/components/ani.dart';
import 'package:first_flutter_app/components/index.dart';
import 'package:first_flutter_app/pages/mine.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/components/base.dart';
import 'package:first_flutter_app/components/card.dart';

class Homie extends StatefulWidget {
  const Homie({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _HomieState createState() => _HomieState();
}

class _HomieState extends State<Homie> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    double tp = MediaQuery.of(context).padding.top;
    double bp = MediaQuery.of(context).padding.bottom;

    return const Base(
      childs: Stack(
        children: <Widget>[Index()],
      ),
    );
  }
}
