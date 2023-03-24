import 'dart:math';

import 'package:first_flutter_app/components/card.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  late int tags;
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    dynamic params = ModalRoute.of(context)?.settings.arguments;
    tags = params['index'];
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(children: [
          const Text('hlhlhhhh'),
          Container(
              margin: const EdgeInsets.all(40),
              child: Hero(
                tag: 'm$tags',
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(Random().nextInt(256),
                        Random().nextInt(256), Random().nextInt(256), 0.5),
                    borderRadius: BorderRadius.all(Radius.circular(35 * rpx)),
                  ),
                  child: Center(
                    child: Text('乾',
                        style: TextStyle(
                          fontSize: 48 * rpx,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  ),
                ),
              )),
          FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.abc,
              )),
          LoadingAnimationWidget.fourRotatingDots(
            color: Colors.lightBlue,
            size: 100,
          ),
        ]),
      ),
    );
  }
}
