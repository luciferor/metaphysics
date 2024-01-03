import 'package:dio/dio.dart';
import 'package:first_flutter_app/classes/apis.dart';
import 'package:first_flutter_app/classes/https.dart';
import 'package:first_flutter_app/classes/showmsg.dart';
import 'package:first_flutter_app/classes/singleres.dart';
import 'package:first_flutter_app/components/base.dart';
import 'package:first_flutter_app/components/blur.dart';
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
        child: Container(
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
                Container(
                  padding: EdgeInsets.fromLTRB(0, 20 * rpx, 0, 10 * rpx),
                  alignment: Alignment.center,
                  child: Shimmer.fromColors(
                    baseColor: const Color.fromARGB(255, 0, 72, 255),
                    highlightColor: const Color.fromARGB(255, 0, 255, 255),
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
                  height: 50 * rpx,
                ),
                Container(
                  width: ((MediaQuery.of(context).size.width + 200) * rpx) -
                      (10 * rpx),
                  height: 95 * rpx,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 247, 247, 247),
                    borderRadius: BorderRadius.circular(
                      30 * rpx,
                    ),
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
                Container(
                  height: 60 * rpx,
                ),
                Container(
                  width: ((MediaQuery.of(context).size.width + 200) * rpx) -
                      (10 * rpx),
                  height: 95 * rpx,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 247, 247, 247),
                    borderRadius: BorderRadius.circular(
                      30 * rpx,
                    ),
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
                Container(
                  margin: EdgeInsets.fromLTRB(0, 100 * rpx, 0, 0),
                  height: 200 * rpx,
                  alignment: Alignment.center,
                  child: Container(
                    width: 300 * rpx,
                    height: 100 * rpx,
                    decoration: BoxDecoration(
                      // color: const Color.fromARGB(255, 236, 236, 236),
                      color: const Color.fromARGB(255, 0, 72, 255),
                      borderRadius: BorderRadius.circular(30 * rpx),
                    ),
                    child: FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 0, 72, 255),
                      onPressed: () {
                        handleLogin(context);
                      },
                      child: Text(
                        '登录',
                        style: TextStyle(
                          fontSize: 38 * rpx,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 10 * rpx,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 300 * rpx,
                  padding: EdgeInsets.fromLTRB(0, 10 * rpx, 0, 0),
                  child: FloatingActionButton(
                    backgroundColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    elevation: 0,
                    focusElevation: 0,
                    hoverElevation: 0,
                    highlightElevation: 0,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Register(),
                        ),
                      );
                    },
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
      ),
    );
  }

  //登录
  void handleLogin(BuildContext context) async {
    if (_emailController.text.isEmpty) {
      pubMsg.showError('请输入邮箱～', context);
      return;
    }
    if (_pwdController.text.isEmpty) {
      pubMsg.showError('请输入密码', context);
      return;
    }
    Https https = Https();
    Map<String, dynamic> params = {
      "email": email,
      'password': pwd,
    };
    Response res = await https.post(Apis.loginapi, params);
    Singleres sr = Singleres.fromJson(res.data);
    if (sr.status!) {
      pubMsg.setStorage('authorzation', sr.message!);
      // ignore: use_build_context_synchronously
      pubMsg.showError('登录成功～', context);
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Homie(),
        ),
      );
    } else {
      // ignore: use_build_context_synchronously
      pubMsg.showError(sr.message!, context);
    }
  }
}
