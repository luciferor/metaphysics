import 'dart:ui';
import 'package:first_flutter_app/pages/detail.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:first_flutter_app/components/card.dart';
// import 'package:first_flutter_app/classes/https.dart';
// import 'package:first_flutter_app/classes/res.dart';
import 'package:first_flutter_app/pages/test.dart';

class Homie extends StatefulWidget {
  const Homie({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _HomieState createState() => _HomieState();
}

class _HomieState extends State<Homie> {
  bool _slowAnimations = false;

  @override
  void initState() {
    super.initState();
    // Https https = Https('https://xapi.dsnbc.com/test', {});
    // https.responseData();
  }

  @override
  Widget build(BuildContext context) {
    List arr = [1, 2, 3];
    double rpx = MediaQuery.of(context).size.width / 750;
    double tp = MediaQuery.of(context).padding.top;
    double bp = MediaQuery.of(context).padding.bottom;

    List<Widget> _initCardCus() {
      var tempList = arr.map((e) {
        return CardCus(
          onTap: () {
            print('object $e');
            Navigator.pushNamed(context, '/detail');
          },
        );
      });
      return tempList.toList();
    }

    return Scaffold(
        backgroundColor: Colors.blue[50],
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image(
              image: const AssetImage(
                  'assets/images/9c4ed027180fa668626b7aa0aea7f141.jpeg'),
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width, //整个屏幕的宽度
              height: MediaQuery.of(context).size.height, //整个屏幕的高度
            ),
            ClipRect(
                child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Opacity(
                opacity: 0.5,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                  ),
                ),
              ),
            )),
            Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(80 * rpx),
                            bottomLeft: Radius.circular(80 * rpx)),
                      ),
                      child: ClipRect(
                          child: BackdropFilter(
                        filter:
                            ImageFilter.blur(sigmaX: 0 * rpx, sigmaY: 0 * rpx),
                        child: Opacity(
                          opacity: 1,
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                color: Colors.white.withAlpha(100),
                                borderRadius: BorderRadius.circular(80 * rpx),
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(
                                    50 * rpx, tp, 50 * rpx, bp),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          0, 50 * rpx, 0, 50 * rpx),
                                      child: Flex(
                                        direction: Axis.horizontal,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            color: Colors.red,
                                            onPressed: () {
                                              print('object');
                                            },
                                            icon: Icon(
                                              Icons.casino,
                                              size: 80 * rpx,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              height: 100 * rpx,
                                              margin: EdgeInsets.fromLTRB(
                                                  30 * rpx, 0, 30 * rpx, 0),
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[300],
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              60 * rpx))),
                                              child: const Center(
                                                child: Text('玄门正宗'),
                                              ),
                                            ),
                                          ),
                                          const CircleAvatar(
                                            backgroundColor: Colors.transparent,
                                            backgroundImage: AssetImage(
                                                'assets/images/logo.png'),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '玄门正宗',
                                      style: TextStyle(
                                          fontSize: 48 * rpx,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        // Navigator.pushNamed(context, '/detail');
                                        Navigator.of(context).push(
                                          MaterialPageRoute<void>(
                                            builder: (BuildContext context) {
                                              return const OpenContainerTransformDemo();
                                            },
                                          ),
                                        );
                                      },
                                      child: const Text('跳转'),
                                    )
                                  ],
                                ),
                              )),
                        ),
                      )),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height -
                          MediaQuery.of(context).size.width,
                      child: ListWheelScrollView(
                          itemExtent: 400 * rpx,
                          diameterRatio: 1,
                          perspective: 0.003,
                          offAxisFraction: 0,
                          useMagnifier: false,
                          magnification: 1,
                          squeeze: 1,
                          children: _initCardCus()),
                    ),
                  ],
                )),
          ],
        ));
  }
}
