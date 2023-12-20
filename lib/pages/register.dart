import 'package:first_flutter_app/components/base.dart';
import 'package:first_flutter_app/components/blur.dart';
import 'package:first_flutter_app/components/border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

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
                    color: const Color.fromARGB(111, 255, 255, 255),
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
                padding: EdgeInsets.fromLTRB(0, 60 * rpx, 0, 10 * rpx),
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
                    120 * rpx,
                  ),
                ),
                child: Blur(
                  rpx: rpx,
                  radius: 120,
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
                              color: const Color.fromARGB(255, 255, 255, 255),
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
                    120 * rpx,
                  ),
                ),
                child: Blur(
                  rpx: rpx,
                  radius: 120,
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
                              95 * rpx,
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
                              hintText: '输入验证码',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                            style: TextStyle(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontSize: 32 * rpx,
                            ),
                            onChanged: (value) {
                              setState(() {
                                pwd = value;
                              });
                            },
                          ),
                        ),
                        Container(
                          height: 95 * rpx,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30 * rpx),
                              topRight: Radius.circular(100 * rpx),
                              bottomRight: Radius.circular(100 * rpx),
                              bottomLeft: Radius.circular(30 * rpx),
                            ),
                          ),
                          padding:
                              EdgeInsets.fromLTRB(20 * rpx, 0, 20 * rpx, 0),
                          child: Text(
                            '获取验证码',
                            style: TextStyle(
                              fontSize: 26 * rpx,
                              color: Colors.blue,
                            ),
                          ),
                        ),
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
                    120 * rpx,
                  ),
                ),
                child: Blur(
                  rpx: rpx,
                  radius: 120,
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
                              color: const Color.fromARGB(255, 255, 255, 255),
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
                height: 60 * rpx,
              ),
              Container(
                width: ((MediaQuery.of(context).size.width + 200) * rpx) -
                    (10 * rpx),
                height: 95 * rpx,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    120 * rpx,
                  ),
                ),
                child: Blur(
                  rpx: rpx,
                  radius: 120,
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
                              95 * rpx,
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
                              hintText: '重复密码',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                            style: TextStyle(
                              color: const Color.fromARGB(255, 255, 255, 255),
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
                child: CustomPaint(
                  painter: GradientBoundPainter(
                    colors: [
                      const Color.fromARGB(255, 112, 250, 158),
                      const Color.fromARGB(255, 63, 152, 254),
                      const Color.fromARGB(255, 232, 0, 232),
                    ],
                    width: 300 * rpx,
                    height: 100 * rpx,
                    strokeWidth: 3 * rpx,
                    radius: 200 * rpx,
                  ),
                  child: Container(
                    width: 300 * rpx,
                    height: 100 * rpx,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(125, 204, 213, 255),
                      borderRadius: BorderRadius.circular(50 * rpx),
                    ),
                    child: Shimmer.fromColors(
                      baseColor: const Color.fromARGB(255, 230, 230, 230),
                      highlightColor: const Color.fromARGB(255, 255, 255, 255),
                      child: Text(
                        '立即注册',
                        style: TextStyle(
                          fontSize: 32 * rpx,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 10 * rpx,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 30 * rpx, 0, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Shimmer.fromColors(
                    baseColor: const Color.fromARGB(255, 211, 211, 211),
                    highlightColor: const Color.fromARGB(255, 255, 255, 255),
                    child: Text(
                      '已有账号，去登录',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 26 * rpx,
                      ),
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
