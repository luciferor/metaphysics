import 'package:first_flutter_app/components/base.dart';
import 'package:flutter/material.dart';

class Coming extends StatefulWidget {
  const Coming({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ComingState createState() => _ComingState();
}

class _ComingState extends State<Coming> {
  @override
  Widget build(BuildContext context) {
    return Base(
      childs: Container(
        constraints: const BoxConstraints.expand(),
        color: const Color.fromARGB(255, 0, 0, 0),
        child: Stack(
          children: [
            Image.asset('assets/images/6e0d754.gif'),
          ],
        ),
      ),
    );
  }
}
