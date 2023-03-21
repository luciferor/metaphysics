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
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(children: [
          Text('hlhlhhhh'),
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
