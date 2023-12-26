import 'package:first_flutter_app/components/home.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/components/base.dart';

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
    return const Base(
      childs: Stack(
        children: <Widget>[Index()],
      ),
    );
  }
}
