import 'package:first_flutter_app/components/ani.dart';
import 'package:first_flutter_app/components/base.dart';
import 'package:first_flutter_app/components/blur.dart';
import 'package:first_flutter_app/components/border.dart';
import 'package:first_flutter_app/pages/ai.dart';
import 'package:first_flutter_app/pages/index.dart';
import 'package:first_flutter_app/pages/register.dart';
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
              Container(
                width: 290 * rpx,
                height: 290 * rpx,
                padding: EdgeInsets.all(30 * rpx),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(190 * rpx),
                ),
                child: Blur(
                  rpx: rpx,
                  radius: 290 * rpx,
                  widget: Container(
                    padding: EdgeInsets.all(30 * rpx),
                    constraints: const BoxConstraints.expand(),
                    width: 290 * rpx,
                    height: 290 * rpx,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        290 * rpx,
                      ),
                      child: const Image(
                        image: AssetImage('assets/images/8e3a09875693fb.png'),
                      ),
                    ),
                  ),
                ),
              ),
              // CustomPaint(
              //   painter: GradientBoundPainter(
              //     colors: [
              //       const Color.fromARGB(255, 119, 3, 130),
              //       const Color.fromARGB(255, 6, 15, 174),
              //     ],
              //     width: 200 * rpx,
              //     height: 200 * rpx,
              //     strokeWidth: 8 * rpx,
              //     radius: 200 * rpx,
              //   ),
              //   child:
              // ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 60 * rpx, 0, 10 * rpx),
                alignment: Alignment.center,
                child: Shimmer.fromColors(
                  baseColor: const Color.fromARGB(255, 0, 72, 255),
                  highlightColor: Color.fromARGB(255, 43, 255, 0),
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
              Text(
                '您专属的时间管理大师',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 24 * rpx,
                ),
              ),
              Container(
                height: 30 * rpx,
              ),
              Container(
                width: ((MediaQuery.of(context).size.width + 200) * rpx) -
                    (10 * rpx),
                height: 95 * rpx,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    30 * rpx,
                  ),
                ),
                child: Blur(
                  rpx: rpx,
                  radius: 30,
                  widget: Padding(
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
                              25 * rpx,
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
                            controller: _emailController,
                            textInputAction: TextInputAction.unspecified,
                            textAlignVertical: TextAlignVertical.center,
                            enabled: true,
                            cursorRadius: Radius.circular(10 * rpx),
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintText: '输入邮箱',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                            style: TextStyle(
                              color: const Color.fromARGB(255, 99, 109, 244),
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
              Container(
                width: ((MediaQuery.of(context).size.width + 200) * rpx) -
                    (10 * rpx),
                height: 95 * rpx,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    30 * rpx,
                  ),
                ),
                child: Blur(
                  rpx: rpx,
                  radius: 30,
                  widget: Padding(
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
                              25 * rpx,
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
                            controller: _pwdController,
                            obscureText: true,
                            textInputAction: TextInputAction.unspecified,
                            textAlignVertical: TextAlignVertical.center,
                            enabled: true,
                            cursorRadius: Radius.circular(10 * rpx),
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintText: '输入密码',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                            style: TextStyle(
                              color: const Color.fromARGB(255, 235, 16, 16),
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
                child: Container(
                  width: 300 * rpx,
                  height: 100 * rpx,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30 * rpx),
                  ),
                  child: Blur(
                    rpx: rpx,
                    radius: 30,
                    widget: Container(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Homie(),
                            ),
                          );
                        },
                        child: Text(
                          '登录',
                          style: TextStyle(
                            fontSize: 38 * rpx,
                            fontWeight: FontWeight.bold,
                            color: Colors.white54,
                            letterSpacing: 10 * rpx,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 30 * rpx, 0, 0),
                child: Ani(
                  radius: 200 * rpx,
                  pages: const Register(),
                  child: Text(
                    '没有账号,去注册',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 45, 85, 245),
                      fontSize: 26 * rpx,
                    ),
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
