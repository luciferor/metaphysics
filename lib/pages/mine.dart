import 'package:first_flutter_app/components/ani.dart';
import 'package:first_flutter_app/components/apps.dart';
import 'package:first_flutter_app/pages/Setting.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/components/base.dart';
import 'package:flutter_svg/svg.dart';

class Mine extends StatefulWidget {
  const Mine({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MineState createState() => _MineState();
}

class _MineState extends State<Mine> {
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    double w = MediaQuery.of(context).size.width;
    double tp = MediaQuery.of(context).padding.top;
    double bp = MediaQuery.of(context).padding.bottom;
    return Base(
      childs: Container(
        constraints: const BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding:
                  EdgeInsets.fromLTRB(40 * rpx, tp + 20 * rpx, 40 * rpx, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 60 * rpx,
                    height: 60 * rpx,
                    alignment: Alignment.center,
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      backgroundColor: const Color.fromARGB(255, 247, 247, 247),
                      elevation: 0,
                      child: const Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                padding: EdgeInsets.all(30 * rpx),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150 * rpx,
                      height: 150 * rpx,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150 * rpx),
                        border: Border.all(
                          color: const Color.fromARGB(200, 247, 249, 255),
                          width: 5 * rpx,
                        ),
                      ),
                      child: Ani(
                        pages: const Setting(),
                        radius: 30 * rpx,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(150 * rpx),
                          child: const Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://img0.baidu.com/it/u=2699322616,853950993&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20 * rpx, 0, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '宁顾客',
                                            style: TextStyle(
                                              fontSize: 32 * rpx,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87,
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                10 * rpx, 0, 0, 0),
                                            child: Text(
                                              'Lv25',
                                              style: TextStyle(
                                                fontSize: 28 * rpx,
                                                color: const Color.fromARGB(
                                                    255, 255, 182, 35),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 80 * rpx,
                                    height: 80 * rpx,
                                    padding: EdgeInsets.all(10 * rpx),
                                    child: SvgPicture.asset(
                                      'assets/images/icons/vip.svg',
                                      width: 40 * rpx,
                                      height: 40 * rpx,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60 * rpx,
                                    height: 60 * rpx,
                                    alignment: Alignment.topCenter,
                                    padding: EdgeInsets.all(15 * rpx),
                                    child: SvgPicture.asset(
                                      'assets/images/icons/m.svg',
                                      width: 30 * rpx,
                                      height: 30 * rpx,
                                    ),
                                  ),
                                  Text(
                                    '18岁',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 9, 70, 255),
                                      fontSize: 28 * rpx,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Text(
                                '为天地立心，为生民立命，为往圣继绝学，为万世开太平。',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 24 * rpx,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 380 * rpx,
              padding: EdgeInsets.fromLTRB(40 * rpx, 0, 40 * rpx, 30 * rpx),
              child: Container(
                padding: EdgeInsets.fromLTRB(5 * rpx, 10 * rpx, 5 * rpx, 0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(60 * rpx),
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.black54,
                      Colors.black87,
                    ],
                  ),
                ),
                child: const Apps(),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40 * rpx, 0, 40 * rpx, 40 * rpx),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 30 * rpx),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 247, 247, 247),
                      borderRadius: BorderRadius.circular(30 * rpx),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 90 * rpx,
                          height: 90 * rpx,
                          padding: EdgeInsets.all(10 * rpx),
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            'assets/images/icons/grade.svg',
                            width: 70 * rpx,
                            height: 70 * rpx,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '会员中心',
                              style: TextStyle(
                                fontSize: 30 * rpx,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 90 * rpx,
                          height: 90 * rpx,
                          padding: EdgeInsets.all(10 * rpx),
                          alignment: Alignment.centerRight,
                          child: SvgPicture.asset(
                            'assets/images/icons/arrow.svg',
                            width: 30 * rpx,
                            height: 30 * rpx,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 30 * rpx),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 247, 247, 247),
                      borderRadius: BorderRadius.circular(30 * rpx),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 90 * rpx,
                          height: 90 * rpx,
                          padding: EdgeInsets.all(10 * rpx),
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            'assets/images/icons/collect.svg',
                            width: 70 * rpx,
                            height: 70 * rpx,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '权益',
                              style: TextStyle(
                                fontSize: 30 * rpx,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 90 * rpx,
                          height: 90 * rpx,
                          padding: EdgeInsets.all(10 * rpx),
                          alignment: Alignment.centerRight,
                          child: SvgPicture.asset(
                            'assets/images/icons/arrow.svg',
                            width: 30 * rpx,
                            height: 30 * rpx,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 30 * rpx),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 247, 247, 247),
                      borderRadius: BorderRadius.circular(30 * rpx),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 90 * rpx,
                          height: 90 * rpx,
                          padding: EdgeInsets.all(10 * rpx),
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            'assets/images/icons/clould.svg',
                            width: 70 * rpx,
                            height: 70 * rpx,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '云盘',
                              style: TextStyle(
                                fontSize: 30 * rpx,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 90 * rpx,
                          height: 90 * rpx,
                          padding: EdgeInsets.all(10 * rpx),
                          alignment: Alignment.centerRight,
                          child: SvgPicture.asset(
                            'assets/images/icons/arrow.svg',
                            width: 30 * rpx,
                            height: 30 * rpx,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 30 * rpx),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 247, 247, 247),
                      borderRadius: BorderRadius.circular(30 * rpx),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 90 * rpx,
                          height: 90 * rpx,
                          padding: EdgeInsets.all(10 * rpx),
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            'assets/images/icons/notice.svg',
                            width: 70 * rpx,
                            height: 70 * rpx,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '消息',
                              style: TextStyle(
                                fontSize: 30 * rpx,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 90 * rpx,
                          height: 90 * rpx,
                          padding: EdgeInsets.all(10 * rpx),
                          alignment: Alignment.centerRight,
                          child: SvgPicture.asset(
                            'assets/images/icons/arrow.svg',
                            width: 30 * rpx,
                            height: 30 * rpx,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 30 * rpx),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 247, 247, 247),
                      borderRadius: BorderRadius.circular(30 * rpx),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 90 * rpx,
                          height: 90 * rpx,
                          padding: EdgeInsets.all(10 * rpx),
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            'assets/images/icons/setting.svg',
                            width: 70 * rpx,
                            height: 70 * rpx,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '设置',
                              style: TextStyle(
                                fontSize: 30 * rpx,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 90 * rpx,
                          height: 90 * rpx,
                          padding: EdgeInsets.all(10 * rpx),
                          alignment: Alignment.centerRight,
                          child: SvgPicture.asset(
                            'assets/images/icons/arrow.svg',
                            width: 30 * rpx,
                            height: 30 * rpx,
                          ),
                        ),
                      ],
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
}
