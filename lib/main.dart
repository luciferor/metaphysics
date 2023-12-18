import 'package:flutter/material.dart';
import 'package:first_flutter_app/pages/index.dart';
import 'package:first_flutter_app/pages/detail.dart';
import 'package:first_flutter_app/pages/mine.dart';

void main() => runApp(
      MaterialApp(
        //设置全局转场动画 Theme
        theme: ThemeData.from(colorScheme: const ColorScheme.light()).copyWith(
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: <TargetPlatform, PageTransitionsBuilder>{
              TargetPlatform.android: ZoomPageTransitionsBuilder(),
            },
          ),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const Homie(),
          '/detail': (context) => const Detail(),
          '/mine': (context) => const Mine(),
        },
      ),
    );
