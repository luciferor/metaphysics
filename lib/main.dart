import 'dart:io';

import 'package:first_flutter_app/pages/coming.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/pages/ai.dart';
import 'package:first_flutter_app/pages/login.dart';
import 'package:first_flutter_app/pages/register.dart';
import 'package:first_flutter_app/pages/index.dart';
import 'package:first_flutter_app/pages/detail.dart';
import 'package:first_flutter_app/pages/mine.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  // 确保在应用程序启动前初始化 WidgetsFlutterBinding
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
  runApp(const App());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000) // 加载时间
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle // 加载类型
    ..loadingStyle = EasyLoadingStyle.light // 加载样式
    ..indicatorSize = 45.0 // 大小
    ..radius = 20
    ..maskType = EasyLoadingMaskType.black // 遮罩
    ..userInteractions = true // 使用单例模式
    ..dismissOnTap = false; // 指示器结束的点击时间
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //去掉右上角debug标识
      //设置全局转场动画 Theme
      theme: ThemeData.from(colorScheme: const ColorScheme.light()).copyWith(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
          },
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Homie(),
        '/detail': (context) => const Detail(),
        '/mine': (context) => const Mine(),
        '/ai': (context) => const Ai(),
        '/login': (context) => const Login(),
        '/reg': (context) => const Register(),
        '/coming': (context) => Coming(id: null),
      },
      builder: EasyLoading.init(),
    );
  }
}
