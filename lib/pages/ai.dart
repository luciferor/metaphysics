import 'dart:convert';
import 'dart:js_interop';
import 'dart:ui';
import 'package:first_flutter_app/classes/apis.dart';
import 'package:first_flutter_app/classes/https.dart';
import 'package:first_flutter_app/classes/aimsgres.dart';
import 'package:first_flutter_app/components/base.dart';
import 'package:first_flutter_app/components/blur.dart';
import 'package:first_flutter_app/components/empty.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/themes/github.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dio/dio.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_highlight/flutter_highlight.dart';

class Ai extends StatefulWidget {
  const Ai({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _AiState createState() => _AiState();
}

class _AiState extends State<Ai> {
  final TextEditingController _textController = TextEditingController();
  final dio = Dio();
  String? msg;
  String? sent;
  String? total;
  List<Map<String, dynamic>> msgdata = [];
  bool showEmpty = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    return Base(
      childs: Hero(
          tag: 'ai',
          child: Padding(
            padding: EdgeInsets.all(30 * rpx),
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.transparent,
                  child: msgdata.isEmpty
                      ? const Empty()
                      : Container(
                          alignment: Alignment.topLeft,
                          child: ListView(
                              children: msgdata.map((msg) {
                            // 在此处处理数据
                            return msg['role'] == 'user'
                                ? rendereRightMsg(rpx, msg['content'])
                                : rendereLeftMsg(rpx, msg['content']);
                          }).toList()),
                        ),
                )),
                SizedBox(
                  height: 120 * rpx,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 20 * rpx, 0, 0),
                    child: Blur(
                      rpx: rpx,
                      radius: 100,
                      widget: Padding(
                        padding: EdgeInsets.all(10 * rpx),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          verticalDirection: VerticalDirection.down,
                          children: <Widget>[
                            SizedBox(
                              width: 80 * rpx,
                              height: 80 * rpx,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: NetworkImage(
                                      'https://img0.baidu.com/it/u=2699322616,853950993&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500'),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(
                                    10 * rpx, 0, 10 * rpx, 0),
                                child: TextField(
                                  controller: _textController,
                                  textInputAction: TextInputAction.go,
                                  textAlign: TextAlign.start,
                                  autofocus: true,
                                  expands: false,
                                  enabled: true,
                                  cursorRadius: Radius.circular(10 * rpx),
                                  decoration: InputDecoration(
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    labelText: '请输入信息',
                                    labelStyle: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 32 * rpx,
                                    ),
                                  ),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32 * rpx,
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      msg = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                            IconButton(
                              alignment: Alignment.center,
                              color: Colors.blue,
                              icon: SvgPicture.asset(
                                'assets/images/icons/send.svg',
                                width: 40 * rpx,
                                height: 40 * rpx,
                              ),
                              onPressed: () {
                                if (_textController.text.isNotEmpty) {
                                  setState(() {
                                    msgdata.add({
                                      'content': _textController.text,
                                      'role': 'user',
                                    });
                                  });
                                  httpTest(_textController.text);
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }

  httpTest(String keywords) async {
    Https https = Https();
    Map<String, dynamic> params = {"keywords": keywords};
    Response res = await https.post(Apis.openaiapi, params);
    Autogenerated ag = Autogenerated.fromJson(json.decode(res.data));
    if (ag.code == 200) {
      setState(() {
        msgdata.add({
          'content': ag.message?.choices?[0].message?.content,
          'role': ag.message?.choices?[0].message?.role,
        });
      });
      _textController.text = ''; //成功后清空输入框
    }
  }

  Widget rendereLeftMsg(double rpx, String msg) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 20 * rpx, 0, 20 * rpx),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 100 * rpx,
            height: 100 * rpx,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(100 * rpx),
              border: Border.all(color: Colors.white30, width: 5 * rpx),
            ),
            child: GestureDetector(
              onTap: () {},
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/8e3a09875693fb.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20 * rpx, 0, 120 * rpx, 0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30 * rpx),
                      bottomLeft: Radius.circular(30 * rpx),
                      bottomRight: Radius.circular(30 * rpx),
                    ),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Container(
                          color: const Color.fromARGB(117, 0, 25, 253),
                          child: Padding(
                            padding: EdgeInsets.all(20 * rpx),
                            child: Shimmer.fromColors(
                              baseColor: Colors.white70,
                              highlightColor: Colors.white,
                              child: Text(
                                msg,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28 * rpx,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget rendereRightMsg(double rpx, String msg) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 20 * rpx, 0, 20 * rpx),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 0,
            child: Padding(
              padding: EdgeInsets.fromLTRB(120 * rpx, 0, 20 * rpx, 0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30 * rpx),
                      bottomLeft: Radius.circular(30 * rpx),
                      bottomRight: Radius.circular(30 * rpx),
                    ),
                    child: Container(
                      alignment: Alignment.centerRight,
                      color: const Color.fromARGB(123, 24, 74, 240),
                      child: Padding(
                        padding: EdgeInsets.all(20 * rpx),
                        child: Text(
                          msg,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28 * rpx,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 100 * rpx,
            height: 100 * rpx,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(100 * rpx),
              border: Border.all(color: Colors.white30, width: 5 * rpx),
            ),
            child: GestureDetector(
              onTap: () {},
              child: const CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(
                    'https://img0.baidu.com/it/u=2699322616,853950993&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
