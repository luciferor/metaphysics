import 'package:card_swiper/card_swiper.dart';
import 'package:first_flutter_app/components/ani.dart';
import 'package:first_flutter_app/pages/ai.dart';
import 'package:first_flutter_app/pages/mine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    double tp = MediaQuery.of(context).padding.top;
    double bp = MediaQuery.of(context).padding.bottom;
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20 * rpx, tp + 20 * rpx, 20 * rpx, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 80 * rpx,
                  height: 60 * rpx,
                  padding: EdgeInsets.fromLTRB(20 * rpx, 0, 0, 0),
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15 * rpx, 0, 15 * rpx, 0),
                    child: Container(
                      alignment: Alignment.centerRight,
                      height: 120 * rpx,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 0, 10 * rpx, 0),
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              'assets/images/icons/vip.svg',
                              width: 40 * rpx,
                              height: 40 * rpx,
                            ),
                          ),
                          Text(
                            '凝固壳',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32 * rpx,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 15 * rpx, 0),
                  child: Ani(
                    radius: 30,
                    pages: const Mine(),
                    child: Container(
                      width: 100 * rpx,
                      height: 100 * rpx,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100 * rpx),
                        border: Border.all(
                            color: const Color.fromARGB(10, 0, 72, 255),
                            width: 5 * rpx),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100 * rpx),
                        child: const Image(
                          image: NetworkImage(
                              'https://img0.baidu.com/it/u=2699322616,853950993&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30 * rpx, 0, 30 * rpx),
            child: Container(
              alignment: Alignment.centerRight,
              height: 300 * rpx,
              child: Swiper(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(30 * rpx),
                    child: Container(
                        alignment: Alignment.centerRight,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30 * rpx),
                          child: const Ani(
                            radius: 30,
                            pages: Ai(),
                            child: Image(
                              image: AssetImage('assets/images/4ce8324fe.jpg'),
                            ),
                          ),
                        )),
                  );
                },
                itemWidth: MediaQuery.of(context).size.width - 80 * rpx,
                layout: SwiperLayout.STACK,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                height: 80 * rpx,
                padding: EdgeInsets.fromLTRB(20 * rpx, 0, 40 * rpx, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 300 * rpx,
                      padding: EdgeInsets.fromLTRB(20 * rpx, 0, 20 * rpx, 0),
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.fromLTRB(20 * rpx, 0, 10 * rpx, 0),
                              child: const Icon(Icons.date_range),
                            ),
                            Text(
                              '2023-12-24',
                              style: TextStyle(
                                fontSize: 32 * rpx,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 80 * rpx,
                      height: 80 * rpx,
                      child: FloatingActionButton(
                        onPressed: () {},
                        elevation: 0,
                        backgroundColor:
                            const Color.fromARGB(255, 247, 249, 255),
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 220 * rpx,
                padding: EdgeInsets.all(40 * rpx),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: ['24', '25', '26', '27', '28', '29', '30', '31']
                      .map((msg) {
                    // 在此处处理数据
                    return Container(
                      width: 100 * rpx,
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(0, 0, 20 * rpx, 0),
                      decoration: BoxDecoration(
                        color: msg == '24'
                            ? const Color.fromARGB(255, 145, 7, 209)
                            : const Color.fromARGB(255, 232, 232, 232),
                        borderRadius: BorderRadius.circular(30 * rpx),
                      ),
                      child: Text(
                        msg,
                        style: TextStyle(
                          fontSize: 32 * rpx,
                          fontWeight: FontWeight.bold,
                          color: msg == '24' ? Colors.white : Colors.black,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(40 * rpx, 0, 40 * rpx, bp),
              child: ListView(
                children:
                    ['24', '25', '26', '27', '28', '29', '30', '31'].map((msg) {
                  // 在此处处理数据
                  return Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 30 * rpx),
                    padding: EdgeInsets.fromLTRB(0, 0, 30 * rpx, 0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(168, 236, 236, 236),
                      borderRadius: BorderRadius.circular(50 * rpx),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 140 * rpx,
                          height: 140 * rpx,
                          padding: EdgeInsets.all(20 * rpx),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40 * rpx),
                            child: const Image(
                              image: NetworkImage(
                                  'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fdf434177-70d9-4db6-9f82-7b4650ae415c%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1706019044&t=b354b5b9307c51bceca2174b63a7ac53'),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                0, 30 * rpx, 10 * rpx, 30 * rpx),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '学习易学经典',
                                  style: TextStyle(
                                    fontSize: 28 * rpx,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.fromLTRB(0, 10 * rpx, 0, 0),
                                  child: Text(
                                    '2024-01-25 / 25 分钟',
                                    style: TextStyle(
                                      fontSize: 20 * rpx,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black38,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 120 * rpx,
                          height: 80 * rpx,
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: Text(
                              '去完成',
                              style: TextStyle(
                                fontSize: 24 * rpx,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
