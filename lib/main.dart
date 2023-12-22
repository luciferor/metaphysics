import 'package:flutter/material.dart';
import 'package:first_flutter_app/pages/ai.dart';
import 'package:first_flutter_app/pages/login.dart';
import 'package:first_flutter_app/pages/register.dart';
import 'package:first_flutter_app/pages/index.dart';
import 'package:first_flutter_app/pages/detail.dart';
import 'package:first_flutter_app/pages/mine.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false, //去掉右上角debug标识
        //设置全局转场动画 Theme
        theme: ThemeData.from(colorScheme: const ColorScheme.light()).copyWith(
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: <TargetPlatform, PageTransitionsBuilder>{
              TargetPlatform.android: ZoomPageTransitionsBuilder(),
            },
          ),
        ),
        initialRoute: '/mine',
        routes: {
          '/': (context) => const Homie(),
          '/detail': (context) => const Detail(),
          '/mine': (context) => const Mine(),
          '/ai': (context) => const Ai(),
          '/login': (context) => const Login(),
          '/reg': (context) => const Register(),
        },
      ),
    );
