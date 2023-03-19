import 'package:flutter/material.dart';
import 'package:first_flutter_app/classes/https.dart';
import 'package:first_flutter_app/classes/res.dart';

class Homie extends StatefulWidget {
  const Homie({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _HomieState createState() => _HomieState();
}

class _HomieState extends State<Homie> {
  @override
  void initState() {
    super.initState();
    Https https = Https('https://xapi.dsnbc.com/test', {});
    https.responseData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        body: Center(
          child: Padding(
              padding: EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    Colors.blueAccent.withOpacity(0.5), // 阴影的颜色
                                offset: Offset(10, 10), // 阴影与容器的距离
                                blurRadius: 30.0, // 高斯的标准偏差与盒子的形状卷积。
                                spreadRadius: 0.0, // 在应用模糊之前，框应该膨胀的量。
                              ),
                            ],
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.center,
                              colors: [
                                Colors.white70,
                                Colors.blueAccent,
                              ],
                            )),
                      ),
                    ),
                    Flexible(
                        child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.yellowAccent.withOpacity(0.5), // 阴影的颜色
                              offset: const Offset(10, 10), // 阴影与容器的距离
                              blurRadius: 30.0, // 高斯的标准偏差与盒子的形状卷积。
                              spreadRadius: 0.0, // 在应用模糊之前，框应该膨胀的量。
                            ),
                          ],
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.center,
                            colors: [
                              Colors.white70,
                              Colors.yellowAccent,
                            ],
                          )),
                    )),
                  ]),
                  Row(
                    children: <Widget>[
                      Flexible(
                          child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.5), // 阴影的颜色
                                offset: const Offset(10, 10), // 阴影与容器的距离
                                blurRadius: 30.0, // 高斯的标准偏差与盒子的形状卷积。
                                spreadRadius: 0.0, // 在应用模糊之前，框应该膨胀的量。
                              ),
                            ],
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.center,
                              colors: [
                                Colors.white70,
                                Colors.redAccent,
                              ],
                            )),
                      )),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.greenAccent
                                      .withOpacity(0.5), // 阴影的颜色
                                  offset: const Offset(10, 10), // 阴影与容器的距离
                                  blurRadius: 30.0, // 高斯的标准偏差与盒子的形状卷积。
                                  spreadRadius: 0.0, // 在应用模糊之前，框应该膨胀的量。
                                ),
                              ],
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.center,
                                colors: [
                                  Colors.white70,
                                  Colors.greenAccent,
                                ],
                              )),
                        ),
                      )
                    ],
                  )
                ],
              )),
        ));
  }
}
