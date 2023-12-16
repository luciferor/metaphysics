import 'dart:convert';
import 'package:first_flutter_app/classes/apis.dart';
import 'package:first_flutter_app/classes/https.dart';
import 'package:first_flutter_app/classes/aimsgres.dart';
import 'package:first_flutter_app/components/base.dart';
import 'package:first_flutter_app/components/blur.dart';
import 'package:first_flutter_app/components/empty.dart';
import 'package:first_flutter_app/components/msgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dio/dio.dart';

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
  List<Map<String, dynamic>> msgdata = [
    {
      'content': '我',
      'role': 'user',
    },
    {
      'content': '对不起，我不知道你在说什么。你需要帮助吗？',
      'role': 'assistant',
    },
  ];
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
                  // child: showEmpty ? const Empty() : Msgs(msgdata),
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
                                setState(() {
                                  msgdata.add({
                                    'content': _textController.text,
                                    'role': 'user',
                                  });
                                });
                                httpTest(_textController.text);
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
}
