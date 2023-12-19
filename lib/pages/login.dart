import 'package:first_flutter_app/components/base.dart';
import 'package:first_flutter_app/components/border.dart';
import 'package:first_flutter_app/pages/index.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();
  String? email;
  String? pwd;
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    double tp = MediaQuery.of(context).padding.top;
    double bp = MediaQuery.of(context).padding.bottom;
    return Base(
      childs: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              80 * rpx, tp + 50 * rpx, 80 * rpx, bp + 50 * rpx),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomPaint(
                painter: GradientBoundPainter(
                  colors: [
                    const Color.fromARGB(255, 112, 250, 158),
                    const Color.fromARGB(255, 63, 152, 254),
                    const Color.fromARGB(255, 232, 0, 232),
                  ],
                  width: 200 * rpx,
                  height: 200 * rpx,
                  strokeWidth: 8 * rpx,
                  radius: 200 * rpx,
                ),
                child: Container(
                  width: 190 * rpx,
                  height: 190 * rpx,
                  padding: EdgeInsets.all(30 * rpx),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(190 * rpx),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      200 * rpx,
                    ),
                    child: const Image(
                      image: AssetImage('assets/images/8e3a09875693fb.png'),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 60 * rpx, 0, 60 * rpx),
                alignment: Alignment.center,
                child: Shimmer.fromColors(
                  baseColor: const Color.fromARGB(255, 63, 152, 254),
                  highlightColor: const Color.fromARGB(255, 232, 0, 232),
                  child: Text(
                    '荧惑 Todo.',
                    style: TextStyle(
                      fontSize: 49 * rpx,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              CustomPaint(
                painter: GradientBoundPainter(
                  colors: [
                    const Color.fromARGB(255, 112, 250, 158),
                    const Color.fromARGB(255, 63, 152, 254),
                    const Color.fromARGB(255, 232, 0, 232),
                  ],
                  width: (MediaQuery.of(context).size.width + 100) * rpx,
                  height: 100 * rpx,
                  strokeWidth: 5 * rpx,
                  radius: 200 * rpx,
                ),
                child: Container(
                  width: ((MediaQuery.of(context).size.width + 100) * rpx) -
                      (10 * rpx),
                  height: 95 * rpx,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      120 * rpx,
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10 * rpx),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 75 * rpx,
                          height: 75 * rpx,
                          margin: EdgeInsets.fromLTRB(0, 0, 20 * rpx, 0),
                          padding: EdgeInsets.all(15 * rpx),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(168, 236, 242, 248),
                            borderRadius: BorderRadius.circular(
                              95 * rpx,
                            ),
                          ),
                          child: SvgPicture.asset(
                            'assets/images/icons/p.svg',
                            width: 30 * rpx,
                            height: 30 * rpx,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            controller: _emailController,
                            textInputAction: TextInputAction.go,
                            textAlign: TextAlign.start,
                            autofocus: true,
                            expands: false,
                            enabled: true,
                            cursorRadius: Radius.circular(10 * rpx),
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 32 * rpx,
                            ),
                            onChanged: (value) {
                              setState(() {
                                email = value;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 60 * rpx,
              ),
              CustomPaint(
                painter: GradientBoundPainter(
                  colors: [
                    const Color.fromARGB(255, 112, 250, 158),
                    const Color.fromARGB(255, 63, 152, 254),
                    const Color.fromARGB(255, 232, 0, 232),
                  ],
                  width: (MediaQuery.of(context).size.width + 100) * rpx,
                  height: 100 * rpx,
                  strokeWidth: 5 * rpx,
                  radius: 200 * rpx,
                ),
                child: Container(
                  width: ((MediaQuery.of(context).size.width + 100) * rpx) -
                      (10 * rpx),
                  height: 95 * rpx,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      120 * rpx,
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10 * rpx),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 75 * rpx,
                          height: 75 * rpx,
                          margin: EdgeInsets.fromLTRB(0, 0, 20 * rpx, 0),
                          padding: EdgeInsets.all(15 * rpx),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(168, 236, 242, 248),
                            borderRadius: BorderRadius.circular(
                              95 * rpx,
                            ),
                          ),
                          child: SvgPicture.asset(
                            'assets/images/icons/u.svg',
                            width: 30 * rpx,
                            height: 30 * rpx,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            controller: _pwdController,
                            textInputAction: TextInputAction.go,
                            textAlign: TextAlign.start,
                            autofocus: true,
                            expands: false,
                            enabled: true,
                            cursorRadius: Radius.circular(10 * rpx),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: const InputDecoration(
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 32 * rpx,
                            ),
                            onChanged: (value) {
                              setState(() {
                                pwd = value;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 100 * rpx, 0, 0),
                height: 200 * rpx,
                alignment: Alignment.center,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const Homie()),
                    );
                  },
                  child: const Text(
                    '登录',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
