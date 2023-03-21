import 'package:flutter/material.dart';
import 'package:first_flutter_app/pages/index.dart';
import 'package:first_flutter_app/pages/detail.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Homie(),
        '/detail': (context) => const Detail(),
      },
    ));
