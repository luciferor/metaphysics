import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:dio/dio.dart';
import 'package:first_flutter_app/classes/apis.dart';
import 'package:first_flutter_app/classes/https.dart';
import 'package:first_flutter_app/classes/singleres.dart';
import 'package:first_flutter_app/components/base.dart';
import 'package:first_flutter_app/components/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:first_flutter_app/classes/showmsg.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();
  final TextEditingController _repwdController = TextEditingController();
  String? email;
  String? code;
  String? pwd;
  String? repwd;
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    double tp = MediaQuery.of(context).padding.top;
    double bp = MediaQuery.of(context).padding.bottom;
    return Base(
      childs: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(80 * rpx, tp, 80 * rpx, bp + 50 * rpx),
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
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10 * rpx),
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
                height: 30 * rpx,
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
                            color: const Color.fromARGB(255, 0, 0, 0),
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
                          'assets/images/icons/c.svg',
                          width: 30 * rpx,
                          height: 30 * rpx,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: _codeController,
                          textInputAction: TextInputAction.unspecified,
                          textAlignVertical: TextAlignVertical.center,
                          enabled: true,
                          cursorRadius: Radius.circular(10 * rpx),
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            hintText: '输入验证码',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 32 * rpx,
                          ),
                          onChanged: (value) {
                            setState(() {
                              code = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        width: 200 * rpx,
                        height: 95 * rpx,
                        padding: EdgeInsets.fromLTRB(20 * rpx, 0, 0, 0),
                        child: FloatingActionButton(
                          onPressed: () {
                            getCheckCode(context);
                          },
                          // isExtended: true,
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25 * rpx),
                            side: const BorderSide(
                              width: 2,
                              color: Color.fromARGB(0, 235, 26, 26),
                            ),
                          ),
                          child: Text(
                            '获取验证码',
                            style: TextStyle(
                              fontSize: 26 * rpx,
                              color: const Color.fromARGB(255, 48, 39, 229),
                            ),
                          ),
                        ),
                      ),
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
                          keyboardType: TextInputType.text,
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
                            color: const Color.fromARGB(255, 0, 0, 0),
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
                          'assets/images/icons/r.svg',
                          width: 30 * rpx,
                          height: 30 * rpx,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: _repwdController,
                          obscureText: true,
                          textInputAction: TextInputAction.unspecified,
                          textAlignVertical: TextAlignVertical.center,
                          enabled: true,
                          cursorRadius: Radius.circular(10 * rpx),
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            hintText: '重复密码',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 32 * rpx,
                          ),
                          onChanged: (value) {
                            setState(() {
                              repwd = value;
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
                      handleRegister(context);
                    },
                    child: Text(
                      '立即注册',
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
                    Navigator.pop(context);
                  },
                  child: Text(
                    '已有账号,去登录',
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

  //获取验证码
  void getCheckCode(BuildContext context) async {
    if (_emailController.text.isEmpty) {
      pubMsg.showError('请输入邮箱~', context);
      return;
    }
    Https https = Https();
    Map<String, dynamic> params = {"email": email};
    Response res = await https.post(Apis.codeapi, params);
    Singleres sr = Singleres.fromJson(res.data);
    // ignore: use_build_context_synchronously
    pubMsg.showInfo(sr.message!, context);
  }

  //注册
  void handleRegister(BuildContext context) async {
    if (_emailController.text.isEmpty) {
      pubMsg.showError('请输入邮箱~', context);
      return;
    }
    if (_codeController.text.isEmpty) {
      pubMsg.showError('请输入验证码~', context);
      return;
    }
    if (_pwdController.text.isEmpty) {
      pubMsg.showError('请输入密码~', context);
      return;
    }
    if (_repwdController.text.isEmpty) {
      pubMsg.showError('请重复输入密码~', context);
      return;
    }
    Https https = Https();
    Map<String, dynamic> params = {
      "email": email,
      "code": code,
      'password': pwd,
      'repassword': repwd
    };
    Response res = await https.post(Apis.registerapi, params);
    Singleres sr = Singleres.fromJson(res.data);
    if (sr.status!) {
      // ignore: use_build_context_synchronously
      pubMsg.showSuccess(sr.message!, context);
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    } else {
      // ignore: use_build_context_synchronously
      pubMsg.showError('请输入邮箱~', context);
    }
  }
}
