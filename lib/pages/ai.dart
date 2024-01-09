import 'dart:convert';

import 'package:cherry_toast/resources/arrays.dart';
import 'package:first_flutter_app/classes/aisession.dart';
import 'package:first_flutter_app/classes/apis.dart';
import 'package:first_flutter_app/classes/https.dart';
import 'package:first_flutter_app/classes/aimsgres.dart';
import 'package:first_flutter_app/components/base.dart';
import 'package:first_flutter_app/components/empty.dart';
import 'package:first_flutter_app/pages/ailogs.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:markdown_widget/markdown_widget.dart';

class Ai extends StatefulWidget {
  const Ai({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _AiState createState() => _AiState();
}

class _AiState extends State<Ai> {
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final FocusNode _focusnode = FocusNode();
  final dio = Dio();
  String? msg;
  String? sent;
  String? total;
  bool? loading = false;
  List<Map<String, dynamic>> msgdata = [];
  bool showEmpty = false;
  @override
  void initState() {
    super.initState();
    handleGetSession();
  }

  @override
  void dispose() {
    handleSaveSession();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    double tp = MediaQuery.of(context).padding.top;
    return Base(
      childs: Padding(
        padding: EdgeInsets.all(30 * rpx),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, tp, 0, 20 * rpx),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 60 * rpx,
                    height: 60 * rpx,
                    child: FloatingActionButton(
                      elevation: 0,
                      backgroundColor: const Color.fromARGB(255, 247, 247, 247),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50 * rpx),
                      ),
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.black26,
                        size: 40 * rpx,
                        weight: 800,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: msgdata.isEmpty
                    ? const Empty()
                    : Container(
                        alignment: Alignment.topCenter,
                        child: ListView(
                          controller: _scrollController,
                          children: msgdata.map((msg) {
                            // 在此处处理数据
                            return msg['role'] == 'user'
                                ? rendereRightMsg(rpx, msg['content'])
                                : rendereLeftMsg(rpx, msg['content']);
                          }).toList(),
                        ),
                      ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10 * rpx),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 247, 247, 247),
                borderRadius: BorderRadius.circular(30 * rpx),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 80 * rpx,
                    height: 80 * rpx,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30 * rpx),
                      child: FloatingActionButton(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.black54,
                        elevation: 0,
                        focusElevation: 0,
                        highlightElevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25 * rpx),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Ailogs(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.history_toggle_off,
                          size: 40 * rpx,
                          weight: 800,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(10 * rpx, 0, 10 * rpx, 0),
                      padding: EdgeInsets.fromLTRB(10 * rpx, 0, 10 * rpx, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30 * rpx),
                      ),
                      child: TextField(
                        focusNode: _focusnode,
                        controller: _textController,
                        minLines: 1,
                        maxLines: 5,
                        textInputAction: TextInputAction.send,
                        textAlignVertical: TextAlignVertical.center,
                        cursorRadius: Radius.circular(10 * rpx),
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: '输入关键字',
                          hintStyle: const TextStyle(color: Colors.grey),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          contentPadding:
                              EdgeInsets.fromLTRB(0, 0, 0, 20 * rpx),
                        ),
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 32 * rpx,
                        ),
                        onChanged: (value) {
                          setState(() {
                            msg = value;
                          });
                        },
                        onTapOutside: (event) {
                          _focusnode.unfocus();
                        },
                        onSubmitted: (value) {
                          if (_textController.text.isEmpty) {
                            // pubMsg.showError('请输入内容～', context);
                            EasyLoading.showError('请输入内容～');
                            return;
                          }
                          if (_textController.text.isNotEmpty) {
                            setState(
                              () {
                                msgdata.add({
                                  'content': _textController.text,
                                  'role': 'user',
                                });
                                loading = true;
                                _focusnode.unfocus();
                              },
                            );
                            Future.delayed(const Duration(milliseconds: 500),
                                () {
                              _scrollController.animateTo(
                                  _scrollController.position.maxScrollExtent,
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeInCubic);
                            });
                            httpTest(_textController.text);
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80 * rpx,
                    height: 80 * rpx,
                    child: FloatingActionButton(
                      backgroundColor: _textController.text.isEmpty
                          ? const Color.fromARGB(100, 0, 72, 255)
                          : const Color.fromARGB(255, 0, 72, 255),
                      foregroundColor: Colors.white70,
                      splashColor: const Color.fromARGB(255, 0, 72, 255),
                      elevation: 0,
                      highlightElevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25 * rpx),
                      ),
                      child: Icon(
                        Icons.arrow_upward,
                        size: 40 * rpx,
                        weight: 800,
                      ),
                      onPressed: () {
                        if (_textController.text.isEmpty) {
                          // pubMsg.showError('请输入内容～', context);
                          EasyLoading.showError('请输入内容～');
                        }
                        if (_textController.text.isNotEmpty) {
                          setState(
                            () {
                              msgdata.add({
                                'content': _textController.text,
                                'role': 'user',
                              });
                              loading = true;
                              _focusnode.unfocus();
                            },
                          );
                          Future.delayed(const Duration(milliseconds: 500), () {
                            _scrollController.animateTo(
                                _scrollController.position.maxScrollExtent,
                                duration: const Duration(milliseconds: 1000),
                                curve: Curves.easeInCubic);
                          });
                          httpTest(_textController.text);
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  handleGetSession() async {
    Https https = Https();
    Response res = await https.post(Apis.getsessionaapi, {});
    Aisession sr = Aisession.fromJson(res.data);
    for (var i = 0; i < sr.message!.length; i++) {
      print(sr.message?[i].sessionTitle);
    }
  }

  handleSaveSession() async {
    if (msgdata.isEmpty) return;
    Https https = Https();
    Map<String, dynamic> params = {
      "title": msgdata[0]['content'],
      "usession": jsonEncode(msgdata)
    };
    Response res = await https.post(Apis.newsessionapi, params);
    // Autogenerated ag = Autogenerated.fromJson(res.data);
  }

  httpTest(String keywords) async {
    String tkeywords = keywords;
    _textController.text = '';

    setState(() {
      msgdata.add({
        'content': '小惑正在思考中...',
        'role': 'assistant',
      });
    });
    String old = msgdata.length >= 3
        ? msgdata[msgdata.length - 3]['content']
        : '请描述您的问题~';
    Https https = Https();
    Map<String, dynamic> params = {"keywords": tkeywords, "old": old};
    Response res = await https.post(Apis.openapi, params);
    Autogenerated ag = Autogenerated.fromJson(res.data);

    if (ag.code == 200) {
      setState(() {
        msgdata[msgdata.length - 1]['content'] =
            ag.message?.choices?[0].message?.content;
        loading = false;
      });
      Future.delayed(const Duration(milliseconds: 500), () {
        _scrollController.animateTo(_scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeInCubic);
      });
    } else {
      // ignore: use_build_context_synchronously
      CherryToast.error(
        title: const Text(
          '请求错误~',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        animationDuration: const Duration(milliseconds: 500),
        toastDuration: const Duration(milliseconds: 1000),
        animationType: AnimationType.fromTop,
      ).show(context);
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
              child: GestureDetector(
                onLongPress: () {
                  Clipboard.setData(
                    ClipboardData(text: msg),
                  );
                  EasyLoading.showInfo('内容复制成功~');
                },
                child: ChatBubble(
                  clipper: ChatBubbleClipper3(type: BubbleType.receiverBubble),
                  alignment: Alignment.bottomLeft,
                  backGroundColor: const Color.fromARGB(255, 247, 247, 247),
                  shadowColor: const Color.fromARGB(255, 236, 236, 236),
                  child: Text(
                    msg,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32 * rpx,
                    ),
                  ),
                  // MarkdownWidget(data: msg, shrinkWrap: false),
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
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(120 * rpx, 0, 0, 0),
              child: ChatBubble(
                clipper: ChatBubbleClipper3(type: BubbleType.sendBubble),
                alignment: Alignment.bottomRight,
                backGroundColor: const Color.fromARGB(255, 95, 80, 255),
                shadowColor: const Color.fromARGB(255, 95, 80, 255),
                child: Text(
                  msg,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32 * rpx,
                  ),
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
