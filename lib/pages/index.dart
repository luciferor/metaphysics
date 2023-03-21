import 'dart:ui';
import 'package:first_flutter_app/pages/detail.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
// import 'package:first_flutter_app/classes/https.dart';
// import 'package:first_flutter_app/classes/res.dart';

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
    // Https https = Https('https://xapi.dsnbc.com/test', {});
    // https.responseData();
  }

  @override
  Widget build(BuildContext context) {
    List<int> arr = [
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1
    ];
    double rpx = MediaQuery.of(context).size.width / 750;
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
            // ClipRect(
            //     child: BackdropFilter(
            //   filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            //   child: Opacity(
            //     opacity: 0.5,
            //     child: Container(
            //       width: MediaQuery.of(context).size.width,
            //       height: MediaQuery.of(context).size.height,
            //       decoration: BoxDecoration(
            //         color: Colors.grey.shade300,
            //       ),
            //     ),
            //   ),
            // )),
            Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    Container(
                      width: 500.0,
                      height: 200.0,
                      padding: EdgeInsets.all(50),
                      child: _TransitionListTile(
                        title: 'Fade',
                        subtitle: 'FadeScaleTransition',
                        onTap: () {
                          print('sldjfsaldjf;salkdjfasd');
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) {
                                return const Detail();
                              },
                            ),
                          );
                        },
                      ),
                    ),
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
                          opacity: 0.5,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            decoration: BoxDecoration(
                              color: Colors.white.withAlpha(100),
                              borderRadius: BorderRadius.circular(80 * rpx),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 200 * rpx,
                                  height: 200 * rpx,
                                  child: const Image(
                                    image: AssetImage('assets/images/logo.png'),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(30 * rpx),
                                  child: Text(
                                    '玄门正宗',
                                    style: TextStyle(
                                        fontSize: 80 * rpx,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black,
                                        letterSpacing: 10 * rpx),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(30 * rpx),
                                  child: Text(
                                    '为天地立心、为民生立命，为往圣继绝学、为万世开太平、',
                                    style: TextStyle(
                                        fontSize: 40 * rpx,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black,
                                        letterSpacing: 10 * rpx),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width,
                      child: ListWheelScrollView(
                          itemExtent: 400 * rpx,
                          diameterRatio: 1,
                          perspective: 0.003,
                          offAxisFraction: 0,
                          useMagnifier: false,
                          magnification: 1.5,
                          squeeze: 1,
                          children: <Widget>[
                            //*************************************************** */
                            Container(
                              width: MediaQuery.of(context).size.width * rpx,
                              height: 400 * rpx,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.circular(80 * rpx)),
                              child: ClipRect(
                                  child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 50 * rpx, sigmaY: 50 * rpx),
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                      color: Colors.blue.withAlpha(80),
                                      borderRadius:
                                          BorderRadius.circular(80 * rpx),
                                    ),
                                  ),
                                ),
                              )),
                            ),
                            //*************************************************** */
                            Container(
                              width: MediaQuery.of(context).size.width * rpx,
                              height: 400 * rpx,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.circular(80 * rpx)),
                              child: ClipRect(
                                  child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 50 * rpx, sigmaY: 50 * rpx),
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                        color: Colors.green.withAlpha(80),
                                        borderRadius:
                                            BorderRadius.circular(80 * rpx)),
                                  ),
                                ),
                              )),
                            ),
                            //*************************************************** */
                            Container(
                              width: MediaQuery.of(context).size.width * rpx,
                              height: 400 * rpx,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.circular(80 * rpx)),
                              child: ClipRect(
                                  child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 50 * rpx, sigmaY: 50 * rpx),
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                        color: Colors.red.withAlpha(80),
                                        borderRadius:
                                            BorderRadius.circular(80 * rpx)),
                                  ),
                                ),
                              )),
                            ),
                            //*************************************************** */
                            Container(
                              width: MediaQuery.of(context).size.width * rpx,
                              height: 400 * rpx,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.circular(80 * rpx)),
                              child: ClipRect(
                                  child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 50 * rpx, sigmaY: 50 * rpx),
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                        color: Colors.yellow.withAlpha(80),
                                        borderRadius:
                                            BorderRadius.circular(80 * rpx)),
                                  ),
                                ),
                              )),
                            ),
                            //*************************************************** */
                            Container(
                              width: MediaQuery.of(context).size.width * rpx,
                              height: 400 * rpx,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.circular(80 * rpx)),
                              child: ClipRect(
                                  child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 50 * rpx, sigmaY: 50 * rpx),
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                        color:
                                            Colors.yellowAccent.withAlpha(80),
                                        borderRadius:
                                            BorderRadius.circular(80 * rpx)),
                                  ),
                                ),
                              )),
                            ),
                            //*************************************************** */
                            Container(
                              width: MediaQuery.of(context).size.width * rpx,
                              height: 400 * rpx,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.circular(80 * rpx)),
                              child: ClipRect(
                                  child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 50 * rpx, sigmaY: 50 * rpx),
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                        color: Colors.blueAccent.withAlpha(80),
                                        borderRadius:
                                            BorderRadius.circular(80 * rpx)),
                                  ),
                                ),
                              )),
                            ),
                            //*************************************************** */
                            Container(
                              width: MediaQuery.of(context).size.width * rpx,
                              height: 400 * rpx,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.circular(80 * rpx)),
                              child: ClipRect(
                                  child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 50 * rpx, sigmaY: 50 * rpx),
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                        color: Colors.blueGrey.withAlpha(80),
                                        borderRadius:
                                            BorderRadius.circular(80 * rpx)),
                                  ),
                                ),
                              )),
                            ),
                            //*************************************************** */
                            Container(
                              width: MediaQuery.of(context).size.width * rpx,
                              height: 400 * rpx,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.circular(80 * rpx)),
                              child: ClipRect(
                                  child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 50 * rpx, sigmaY: 50 * rpx),
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent.withAlpha(80),
                                        borderRadius:
                                            BorderRadius.circular(80 * rpx)),
                                  ),
                                ),
                              )),
                            ),
                            //*************************************************** */
                            Container(
                              width: MediaQuery.of(context).size.width * rpx,
                              height: 400 * rpx,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.circular(80 * rpx)),
                              child: ClipRect(
                                  child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 50 * rpx, sigmaY: 50 * rpx),
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent.withAlpha(80),
                                        borderRadius:
                                            BorderRadius.circular(80 * rpx)),
                                  ),
                                ),
                              )),
                            ),
                            //*************************************************** */
                            Container(
                              width: MediaQuery.of(context).size.width * rpx,
                              height: 400 * rpx,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.circular(80 * rpx)),
                              child: ClipRect(
                                  child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 50 * rpx, sigmaY: 50 * rpx),
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withAlpha(80),
                                        borderRadius:
                                            BorderRadius.circular(80 * rpx)),
                                  ),
                                ),
                              )),
                            ),
                            //*************************************************** */
                            Container(
                              width: MediaQuery.of(context).size.width * rpx,
                              height: 400 * rpx,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.circular(80 * rpx)),
                              child: ClipRect(
                                  child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 50 * rpx, sigmaY: 50 * rpx),
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                        color: Colors.deepOrange.withAlpha(80),
                                        borderRadius:
                                            BorderRadius.circular(80 * rpx)),
                                  ),
                                ),
                              )),
                            ),
                            //*************************************************** */
                            Container(
                              width: MediaQuery.of(context).size.width * rpx,
                              height: 400 * rpx,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.circular(80 * rpx)),
                              child: ClipRect(
                                  child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 50 * rpx, sigmaY: 50 * rpx),
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                        color: Colors.deepPurple.withAlpha(80),
                                        borderRadius:
                                            BorderRadius.circular(80 * rpx)),
                                  ),
                                ),
                              )),
                            ),
                            //*************************************************** */
                            Container(
                              width: MediaQuery.of(context).size.width * rpx,
                              height: 400 * rpx,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.circular(80 * rpx)),
                              child: ClipRect(
                                  child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 50 * rpx, sigmaY: 50 * rpx),
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                        color: Colors.pink.withAlpha(80),
                                        borderRadius:
                                            BorderRadius.circular(80 * rpx)),
                                  ),
                                ),
                              )),
                            ),
                            //*************************************************** */
                            Container(
                              width: MediaQuery.of(context).size.width * rpx,
                              height: 400 * rpx,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.circular(80 * rpx)),
                              child: ClipRect(
                                  child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 50 * rpx, sigmaY: 50 * rpx),
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                        color: Colors.brown.withAlpha(80),
                                        borderRadius:
                                            BorderRadius.circular(80 * rpx)),
                                  ),
                                ),
                              )),
                            ),
                            //*************************************************** */
                            Container(
                              width: MediaQuery.of(context).size.width * rpx,
                              height: 400 * rpx,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.circular(80 * rpx)),
                              child: ClipRect(
                                  child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 50 * rpx, sigmaY: 50 * rpx),
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                        color: Colors.amber.withAlpha(80),
                                        borderRadius:
                                            BorderRadius.circular(80 * rpx)),
                                  ),
                                ),
                              )),
                            ),
                            //*************************************************** */
                            Container(
                              width: MediaQuery.of(context).size.width * rpx,
                              height: 400 * rpx,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.circular(80 * rpx)),
                              child: ClipRect(
                                  child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 50 * rpx, sigmaY: 50 * rpx),
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                        color: Colors.cyanAccent.withAlpha(80),
                                        borderRadius:
                                            BorderRadius.circular(80 * rpx)),
                                  ),
                                ),
                              )),
                            ),
                            //*************************************************** */
                            Container(
                              width: MediaQuery.of(context).size.width * rpx,
                              height: 400 * rpx,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.circular(80 * rpx)),
                              child: ClipRect(
                                  child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 50 * rpx, sigmaY: 50 * rpx),
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                        color: Colors.pinkAccent.withAlpha(80),
                                        borderRadius:
                                            BorderRadius.circular(80 * rpx)),
                                  ),
                                ),
                              )),
                            ),
                            //*************************************************** */
                            Container(
                              width: MediaQuery.of(context).size.width * rpx,
                              height: 400 * rpx,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.circular(80 * rpx)),
                              child: ClipRect(
                                  child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 50 * rpx, sigmaY: 50 * rpx),
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                        color: Colors.limeAccent.withAlpha(80),
                                        borderRadius:
                                            BorderRadius.circular(80 * rpx)),
                                  ),
                                ),
                              )),
                            ),
                          ]),
                    ),
                  ],
                )),
          ],
        ));
  }
}

class _TransitionListTile extends StatelessWidget {
  const _TransitionListTile({
    this.onTap,
    required this.title,
    required this.subtitle,
  });

  final GestureTapCallback? onTap;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      leading: Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: Colors.black54,
          ),
        ),
        child: const Icon(
          Icons.play_arrow,
          size: 35,
        ),
      ),
      onTap: onTap,
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
