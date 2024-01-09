import 'dart:async';
import 'package:dio/dio.dart';
import 'package:first_flutter_app/classes/apis.dart';
import 'package:first_flutter_app/classes/detailtodo.dart';
import 'package:first_flutter_app/classes/https.dart';
import 'package:first_flutter_app/components/base.dart';
import 'package:first_flutter_app/pages/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interactive_slider/interactive_slider.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:zhi_starry_sky/starry_sky.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:circular_menu/circular_menu.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:volume_controller/volume_controller.dart';

// ignore: must_be_immutable
class Coming extends StatefulWidget {
  Coming({Key? key, required this.id}) : super(key: key);
  int? id;
  @override
  // ignore: library_private_types_in_public_api
  _ComingState createState() => _ComingState();
}

class _ComingState extends State<Coming> {
  AudioPlayer player = AudioPlayer();
  late Timer? timers;
  int total = 300;
  int progress = 0;
  late Duration duration;
  String hms = '00:00:00';
  int isforce = 0;
  bool isPlay = false;
  bool isWakelock = false;
  double _volumeListenerValue = 0;
  double _getVolume = 0;
  double _setVolumeValue = 0;

  @override
  void initState() {
    super.initState();
    handlerTodoDetail();
    VolumeController().listener((volume) {
      setState(() => _volumeListenerValue = volume);
    });
    VolumeController().getVolume().then((volume) => _setVolumeValue = volume);
  }

  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    double tp = MediaQuery.of(context).padding.top;
    double bp = MediaQuery.of(context).padding.bottom;
    List<String> texts = [
      '专注于呼吸，感受空气在体内流通，让身体放松。',
      '让身体和心灵放松，缓解压力和焦虑。',
      '将注意力集中在一个特定的点上，排除杂念。',
      '保持内心的平静和稳定，不受外界干扰。',
      '感受周围的环境和内心的变化，提高意识。',
      '跟随指导语进行冥想，更好地进入状态。',
    ];

    return Base(
      childs: Container(
        constraints: const BoxConstraints.expand(),
        color: const Color.fromARGB(255, 0, 0, 0),
        child: Stack(
          children: [
            // Center(
            //   child: Image.asset('assets/images/6e0d754.gif'),
            // ),
            const StarrySkyView(),
            Container(
              constraints: const BoxConstraints.expand(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        20 * rpx, tp + 20 * rpx, 20 * rpx, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 80 * rpx,
                          height: 80 * rpx,
                          margin: EdgeInsets.fromLTRB(10 * rpx, 0, 0, 0),
                          child: FloatingActionButton(
                            onPressed: () {
                              if (isWakelock) {
                                setState(() {
                                  WakelockPlus.disable();
                                  isWakelock = false;
                                });
                              } else {
                                setState(() {
                                  WakelockPlus.enable();
                                  isWakelock = true;
                                });
                              }
                            },
                            backgroundColor: const Color.fromARGB(82, 0, 0, 0),
                            elevation: 0,
                            hoverElevation: 0,
                            focusElevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100 * rpx),
                            ),
                            child: Icon(
                              Icons.share,
                              size: 50 * rpx,
                              weight: 800,
                            ),
                          ),
                        ),
                        Container(
                          width: 80 * rpx,
                          height: 80 * rpx,
                          margin: EdgeInsets.fromLTRB(10 * rpx, 0, 0, 0),
                          child: FloatingActionButton(
                            onPressed: () {
                              if (isWakelock) {
                                setState(() {
                                  WakelockPlus.disable();
                                  isWakelock = false;
                                });
                              } else {
                                setState(() {
                                  WakelockPlus.enable();
                                  isWakelock = true;
                                });
                              }
                            },
                            backgroundColor: const Color.fromARGB(82, 0, 0, 0),
                            elevation: 0,
                            hoverElevation: 0,
                            focusElevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100 * rpx),
                            ),
                            child: Icon(
                              Icons.audiotrack,
                              size: 50 * rpx,
                              weight: 800,
                            ),
                          ),
                        ),
                        Container(
                          width: 80 * rpx,
                          height: 80 * rpx,
                          margin: EdgeInsets.fromLTRB(10 * rpx, 0, 0, 0),
                          child: FloatingActionButton(
                            onPressed: () {
                              showCupertinoDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return CupertinoAlertDialog(
                                    title: const Text('Dialog Title'),
                                    content: const Text(
                                        'This is the content of the dialog.'),
                                    actions: <Widget>[
                                      CupertinoDialogAction(
                                        child: const Text('取消'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                      CupertinoDialogAction(
                                        child: const Text('确定'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            backgroundColor: const Color.fromARGB(82, 0, 0, 0),
                            elevation: 0,
                            hoverElevation: 0,
                            focusElevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100 * rpx),
                            ),
                            child: Icon(
                              Icons.power_settings_new,
                              size: 50 * rpx,
                              weight: 800,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(80 * rpx, 0, 80 * rpx, 0),
                        child: DefaultTextStyle(
                          style: TextStyle(
                            fontSize: 50 * rpx,
                            fontFamily: 'Horizon',
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                          child: AnimatedTextKit(
                            pause: const Duration(seconds: 3),
                            animatedTexts: texts
                                .map((e) => RotateAnimatedText(e))
                                .toList(),
                            repeatForever: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        20 * rpx, 0, 20 * rpx, bp + 20 * rpx),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: 80 * rpx,
                            child: InteractiveSlider(
                              // backgroundColor:
                              //     const Color.fromARGB(82, 55, 0, 255),
                              transitionCurvePeriod:
                                  InteractiveSlider.easeTransitionPeriod,
                              padding: const EdgeInsets.all(0),
                              unfocusedMargin:
                                  const EdgeInsets.symmetric(horizontal: 0),
                              iconPosition: IconPosition.inside,
                              startIcon: const Icon(CupertinoIcons.volume_down),
                              endIcon: const Icon(CupertinoIcons.volume_up),
                              centerIcon: const Text('音量'),
                              unfocusedHeight: 80 * rpx,
                              focusedHeight: 80 * rpx,
                              iconGap: 16,
                              onProgressUpdated: (e) {
                                setState(() {
                                  _setVolumeValue = e;
                                  VolumeController().setVolume(_setVolumeValue);
                                });
                              },
                            ),
                          ),
                        ),
                        Container(
                          width: 80 * rpx,
                          height: 80 * rpx,
                          margin: EdgeInsets.fromLTRB(10 * rpx, 0, 0, 0),
                          child: FloatingActionButton(
                            onPressed: () {
                              if (isWakelock) {
                                setState(() {
                                  WakelockPlus.disable();
                                  isWakelock = false;
                                });
                              } else {
                                setState(() {
                                  WakelockPlus.enable();
                                  isWakelock = true;
                                });
                              }
                            },
                            backgroundColor: const Color.fromARGB(82, 0, 0, 0),
                            elevation: 0,
                            hoverElevation: 0,
                            focusElevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100 * rpx),
                            ),
                            child: isWakelock
                                ? Icon(Icons.light_mode, size: 50 * rpx)
                                : Icon(Icons.dark_mode, size: 50 * rpx),
                          ),
                        ),
                        Container(
                          width: 80 * rpx,
                          height: 80 * rpx,
                          margin: EdgeInsets.fromLTRB(10 * rpx, 0, 10 * rpx, 0),
                          child: FloatingActionButton(
                            onPressed: () {
                              if (isPlay) {
                                setState(() {
                                  isPlay = false;
                                  player.pause();
                                });
                              } else {
                                handlerPlayer();
                              }
                            },
                            backgroundColor: const Color.fromARGB(82, 0, 0, 0),
                            elevation: 0,
                            hoverElevation: 0,
                            focusElevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100 * rpx),
                            ),
                            child: isPlay
                                ? Icon(Icons.pause_circle_outline,
                                    size: 50 * rpx)
                                : Icon(Icons.play_arrow_outlined,
                                    size: 50 * rpx),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10 * rpx),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(82, 0, 0, 0),
                            borderRadius: BorderRadius.circular(100 * rpx),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(
                                    15 * rpx, 0, 10 * rpx, 0),
                                child: Text(
                                  hms,
                                  style: TextStyle(
                                    fontSize: 28 * rpx,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              CircularPercentIndicator(
                                radius: 30 * rpx,
                                lineWidth: 10 * rpx,
                                animation: true,
                                percent: (progress / (total * 60) * 100) /
                                    100.round(),
                                center: Text(
                                  '${(progress / (total * 60) * 100).round()}%',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10 * rpx,
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                  ),
                                ),
                                circularStrokeCap: CircularStrokeCap.round,
                                backgroundColor:
                                    const Color.fromARGB(255, 247, 247, 247),
                                progressColor:
                                    const Color.fromARGB(255, 90, 1, 255),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void handlerTodoDetail() async {
    Https https = Https();
    Map<String, dynamic> params = {
      'id': widget.id,
    };
    Response res = await https.post(Apis.gettododetailapi, params);
    Detailtodo ts = Detailtodo.fromJson(res.data);
    setState(() {
      isforce = ts.message?.isforce as int;
      total = ts.message?.minutes as int;
      progress = ts.message?.progress as int;
      total = total - progress;
    });
    timerHandler();
    handlerPlayer();
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
              '${duration.inHours}:${duration.inMinutes.remainder(60)}:${duration.inSeconds.remainder(60)}';
        });
      } else {
        timer.cancel();
      }
    });
  }

  void handlerPlayer() async {
    await player.play(UrlSource('assets/audio/mm.mp3'));
    setState(() {
      isPlay = true;
    });
  }

  @override
  void dispose() {
    timers?.cancel();
    timers = null;
    player.stop();
    VolumeController().removeListener();
    super.dispose();
  }
}
