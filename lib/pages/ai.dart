import 'dart:convert';
import 'package:first_flutter_app/classes/apis.dart';
import 'package:first_flutter_app/classes/https.dart';
import 'package:first_flutter_app/classes/aimsgres.dart';
import 'package:first_flutter_app/components/base.dart';
import 'package:first_flutter_app/components/blur.dart';
import 'package:first_flutter_app/components/empty.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dio/dio.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
// import 'package:shimmer/shimmer.dart';

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
      childs: Padding(
        padding: EdgeInsets.all(30 * rpx),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
              ),
            ),
            SizedBox(
              height: 120 * rpx,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 20 * rpx, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30 * rpx),
                  ),
                  child: Blur(
                    rpx: rpx,
                    radius: 30,
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
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25 * rpx),
                                child: const Image(
                                  image: NetworkImage(
                                      'https://img0.baidu.com/it/u=2699322616,853950993&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500'),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(10 * rpx, 0, 10 * rpx, 0),
                              child: TextField(
                                controller: _textController,
                                // textInputAction: TextInputAction.unspecified,
                                // textAlign: TextAlign.start,
                                // textAlignVertical: TextAlignVertical.center,
                                // enabled: true,
                                // cursorRadius: Radius.circular(10 * rpx),
                                // keyboardType: TextInputType.none,
                                decoration: const InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  hintText: '输入关键字',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                style: TextStyle(
                                  color: Colors.white70,
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
              ),
            ),
          ],
        ),
      ),
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
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            width: 80 * rpx,
            height: 80 * rpx,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 247, 249, 255),
              borderRadius: BorderRadius.circular(100 * rpx),
              // border: Border.all(color: Colors.white30, width: 3 * rpx),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100 * rpx),
              child: const Image(
                image: AssetImage('assets/images/8e3a09875693fb.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 120 * rpx, 0),
              child: BubbleSpecialThree(
                text: msg,
                color: const Color.fromARGB(255, 247, 249, 255),
                tail: true,
                isSender: false,
                textStyle: TextStyle(
                  fontSize: 28 * rpx,
                  color: Colors.black,
                ),
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
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(120 * rpx, 0, 0, 0),
              child: BubbleSpecialThree(
                text: msg,
                color: const Color.fromARGB(255, 95, 80, 255),
                tail: true,
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 28 * rpx,
                ),
              ),
            ),
          ),
          Container(
            width: 80 * rpx,
            height: 80 * rpx,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 247, 249, 255),
              borderRadius: BorderRadius.circular(100.0 * rpx),
              // border: Border.all(
              //     color: const Color.fromARGB(255, 247, 249, 255),
              //     width: 0 * rpx),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100 * rpx),
              child: const Image(
                image: NetworkImage(
                    'https://img0.baidu.com/it/u=2699322616,853950993&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
