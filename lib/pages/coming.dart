import 'dart:async';
import 'package:first_flutter_app/components/base.dart';
import 'package:flutter/material.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';
import 'package:zhi_starry_sky/starry_sky.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

class Coming extends StatefulWidget {
  const Coming({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ComingState createState() => _ComingState();
}

class _ComingState extends State<Coming> {
  late Timer? timers;
  int total = 3000;
  int progress = 0;
  late Duration duration;
  String hms = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timerHandler();
  }

  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    double tp = MediaQuery.of(context).padding.top;
    double bp = MediaQuery.of(context).padding.bottom;
    return Base(
      childs: Container(
        constraints: const BoxConstraints.expand(),
        color: const Color.fromARGB(255, 0, 0, 0),
        child: Stack(
          children: [
            Center(
              child: Image.asset('assets/images/6e0d754.gif'),
            ),
            const StarrySkyView(),
            Container(
              padding: EdgeInsets.fromLTRB(
                  40 * rpx, 20 * rpx + tp, 40 * rpx, bp + 20 * rpx),
              constraints: const BoxConstraints.expand(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(hms),
                      Text('${(progress / total) * 100} %'),
                    ],
                  ),
                  ProgressBar(
                    value: progress / total,
                    width: MediaQuery.of(context).size.width - (80 * rpx),
                    height: 30 * rpx,
                    gradient: const LinearGradient(
                      colors: [
                        Colors.blue,
                        Colors.purple,
                      ],
                    ),
                    backgroundColor: Colors.grey.withOpacity(0.4),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void timerHandler() {
    duration = Duration(minutes: progress);
    timers = Timer.periodic(const Duration(seconds: 300), (timer) {
      if (progress < total) {
        print(progress--);
        setState(() {
          hms =
              '${duration.inHours} : ${duration.inMinutes.remainder(60)} : ${duration.inSeconds.remainder(60)}';
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timers?.cancel();
    timers = null;
  }
}
