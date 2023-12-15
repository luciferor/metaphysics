import 'dart:convert';
import 'package:first_flutter_app/classes/apis.dart';
import 'package:first_flutter_app/classes/https.dart';
import 'package:first_flutter_app/classes/res.dart';
import 'package:first_flutter_app/components/base.dart';
import 'package:first_flutter_app/components/blur.dart';
import 'package:first_flutter_app/components/empty.dart';
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
  String? msg;
  String? sent;
  String? total;
  List<String>? data;
  final dio = Dio();
  @override
  void initState() {
    super.initState();
    httpTest();
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
                  child: const Empty(),
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
                                  decoration: const InputDecoration(
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    labelText: '请输入信息',
                                    labelStyle: TextStyle(
                                      color: Colors.white54,
                                    ),
                                  ),
                                  style: const TextStyle(color: Colors.white),
                                  onChanged: (value) {},
                                  onEditingComplete: () {
                                    setState(() {
                                      msg = _textController.text;
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
                              onPressed: () {},
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

  httpTest() async {
    Https https = Https();
    Map<String, dynamic> params = {"keywords": '我是谁'};
    Response res = await https.post(Apis.openaiapi, params);
    Autogenerated ag = Autogenerated.fromJson(json.decode(res.data));
    print(ag.message);
  }
}
