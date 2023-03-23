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
              child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(width: 100, height: 100, color: Colors.red)),
            ),
          ),
          FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
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
