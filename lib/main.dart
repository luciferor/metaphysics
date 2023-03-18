import 'package:flutter/material.dart';
import 'package:first_flutter_app/pages/index.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Homie(),
      },
    ));
