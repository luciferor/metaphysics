import 'dart:async';
import 'package:dio/dio.dart';
import 'package:first_flutter_app/classes/apis.dart';
import 'package:first_flutter_app/classes/detailtodo.dart';
import 'package:first_flutter_app/classes/https.dart';
import 'package:first_flutter_app/components/base.dart';
import 'package:flutter/material.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';
import 'package:zhi_starry_sky/starry_sky.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class Coming extends StatefulWidget {
  const Coming({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ComingState createState() => _ComingState();
}

class _ComingState extends State<Coming> {
  late Timer? timers;
  int total = 300;
  int progress = 0;
  late Duration duration;
  String hms = '';
  @override
  void initState() {
    super.initState();
    handlerTodoDetail();
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
                    child: SleekCircularSlider(
                      min: 0,
                      max: 100,
                      initialValue: progress / (total * 60),
                      appearance: const CircularSliderAppearance(
                        angleRange: 50,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(hms),
                      Text('${((progress / (total * 60)) * 100).round()} %'),
                    ],
                  ),
                  ProgressBar(
                    value: progress / (total * 60),
                    width: MediaQuery.of(context).size.width - (80 * rpx),
                    height: 10 * rpx,
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(200, 53, 66, 255),
                        Color.fromARGB(200, 217, 0, 255),
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

  void handlerTodoDetail() async {
    Https https = Https();
    Map<String, dynamic> params = {
      'id': 1,
    };
    Response res = await https.post(Apis.gettododetailapi, params);
    Detailtodo ts = Detailtodo.fromJson(res.data);
    setState(() {
      total = ts.message?.minutes as int;
    });
    timerHandler();
  }

  void timerHandler() {
    Duration duration = Duration(minutes: total);
    timers = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      if (progress < total * 60) {
        setState(() {
          progress++;
        });
      }
      if (duration.inSeconds > 0) {
        duration -= const Duration(seconds: 1);
        setState(() {
          hms =
              '${duration.inHours} 时 ${duration.inMinutes.remainder(60)} 分 ${duration.inSeconds.remainder(60)} 秒';
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    timers?.cancel();
    timers = null;
  }
}
