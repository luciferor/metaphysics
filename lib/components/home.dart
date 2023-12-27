import 'package:card_swiper/card_swiper.dart';
import 'package:first_flutter_app/components/ani.dart';
import 'package:first_flutter_app/pages/ai.dart';
import 'package:first_flutter_app/pages/coming.dart';
import 'package:first_flutter_app/pages/cominglogs.dart';
import 'package:first_flutter_app/pages/mine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:action_slider/action_slider.dart';
import 'package:date_format/date_format.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:time_picker_spinner_pop_up/time_picker_spinner_pop_up.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> with SingleTickerProviderStateMixin {
  final _controller = ValueNotifier('all');

  dynamic time = 30;
  bool isForce = false;
  DateTime selectDate = DateTime.now();

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
                    onPressed: () {
                      openBottomSheetHandler(context, rpx, bp);
                    },
                    backgroundColor: const Color.fromARGB(255, 45, 85, 245),
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
                padding: EdgeInsets.fromLTRB(20 * rpx, 0, 40 * rpx, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 20 * rpx, 0),
                      child: Row(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.fromLTRB(20 * rpx, 0, 10 * rpx, 0),
                            child: const Icon(
                              Icons.date_range,
                              color: Color.fromARGB(255, 45, 85, 245),
                            ),
                          ),
                          Text(
                            formatDate(
                              selectDate,
                              [yyyy, '年', 'mm', '月', dd, '日'],
                            ).toString(),
                            style: TextStyle(
                              fontSize: 38 * rpx,
                              color: const Color.fromARGB(255, 45, 85, 245),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 80 * rpx,
                      height: 80 * rpx,
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Cominglogs(),
                            ),
                          );
                        },
                        elevation: 0,
                        backgroundColor:
                            const Color.fromARGB(255, 247, 247, 247),
                        child: const Icon(
                          Icons.format_list_bulleted_add,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // height: 160 * rpx,
                padding:
                    EdgeInsets.fromLTRB(40 * rpx, 20 * rpx, 40 * rpx, 20 * rpx),
                child: EasyInfiniteDateTimeLine(
                  // controller: _controller,
                  firstDate: DateTime.now(),
                  focusDate: selectDate,
                  // locale: 'zh-CN', //目前报错
                  showTimelineHeader: false,
                  lastDate: DateTime.now().add(
                    const Duration(days: 365),
                  ),
                  activeColor: const Color.fromARGB(255, 193, 191, 207),
                  dayProps: EasyDayProps(
                    width: 100 * rpx,
                    height: 120 * rpx,
                    dayStructure: DayStructure.monthDayNumDayStr,
                    activeDayStyle: DayStyle(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30 * rpx),
                        ),
                        gradient: const LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color.fromARGB(255, 45, 85, 245),
                            Color.fromARGB(255, 130, 167, 255),
                          ],
                        ),
                      ),
                      dayNumStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 49 * rpx,
                      ),
                      dayStrStyle: const TextStyle(
                        color: Colors.white54,
                      ),
                      monthStrStyle: const TextStyle(
                        color: Colors.white30,
                      ),
                    ),
                    inactiveDayStyle: DayStyle(
                      borderRadius: 30 * rpx,
                    ),
                  ),
                  onDateChange: (date) {
                    setState(() {
                      selectDate = date;
                    });
                  },
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(40 * rpx, 0, 40 * rpx, bp),
              child: ListView(
                children: ['24', '25', '26', '27', '28', '29', '30', '31'].map(
                  (msg) {
                    // 在此处处理数据
                    return Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 30 * rpx),
                      padding: EdgeInsets.fromLTRB(0, 0, 20 * rpx, 0),
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
                                      '2024-01-25 17:00:00',
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
                          Container(
                            width: 100 * rpx,
                            height: 40 * rpx,
                            alignment: Alignment.center,
                            margin:
                                EdgeInsets.fromLTRB(20 * rpx, 0, 20 * rpx, 0),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 197, 197, 197),
                              borderRadius: BorderRadius.circular(30 * rpx),
                            ),
                            child: Text(
                              '25 分钟',
                              style: TextStyle(
                                fontSize: 18 * rpx,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 100 * rpx,
                            height: 60 * rpx,
                            child: FloatingActionButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Coming(),
                                  ),
                                );
                              },
                              backgroundColor:
                                  const Color.fromARGB(255, 45, 85, 245),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20 * rpx),
                                side: const BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(0, 235, 26, 26),
                                ),
                              ),
                              child: Text(
                                '去完成',
                                style: TextStyle(
                                  fontSize: 20 * rpx,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void openBottomSheetHandler(BuildContext context, double rpx, double bp) {
    List<String> icons = [
      'assets/images/icons/composition.svg',
      'assets/images/icons/cook.svg',
      'assets/images/icons/dance.svg',
      'assets/images/icons/draw.svg',
      'assets/images/icons/learn.svg',
      'assets/images/icons/read.svg',
      'assets/images/icons/sing.svg',
      'assets/images/icons/sport.svg',
      'assets/images/icons/walk.svg',
      'assets/images/icons/yoga.svg'
    ];
    showBottomSheet(
      context: context,
      builder: (context) => StatefulBuilder(
        // builder: (BuildContext context, void Function(void Function()) setState) {  },
        builder: (BuildContext buildcontext,
            void Function(void Function()) setState) {
          return Container(
            height: 755 * rpx,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50 * rpx),
                topRight: Radius.circular(50 * rpx),
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0.2, 0.2),
                  blurRadius: 30 * rpx,
                  spreadRadius: 0,
                  color: const Color.fromARGB(100, 40, 31, 50),
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 20 * rpx, 0, 20 * rpx),
                  alignment: Alignment.center,
                  child: Container(
                    width: 100 * rpx,
                    height: 10 * rpx,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(30 * rpx),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40 * rpx, 0, 40 * rpx, bp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 210 * rpx,
                              child: GridView.count(
                                crossAxisCount: 5,
                                children: icons
                                    .map(
                                      (item) => Container(
                                        padding: EdgeInsets.all(10 * rpx),
                                        child: FloatingActionButton(
                                          onPressed: () {},
                                          backgroundColor: const Color.fromARGB(
                                              255, 247, 247, 247),
                                          child: SvgPicture.asset(
                                            item,
                                            width: 50 * rpx,
                                            height: 50 * rpx,
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                            Container(
                              height: 100 * rpx,
                              padding: EdgeInsets.fromLTRB(
                                  20 * rpx, 10 * rpx, 20 * rpx, 10 * rpx),
                              margin:
                                  EdgeInsets.fromLTRB(0, 30 * rpx, 0, 40 * rpx),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(30 * rpx),
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color.fromARGB(
                                          114, 162, 162, 162),
                                      offset: const Offset(0.2, 0.5),
                                      blurRadius: 10 * rpx,
                                      spreadRadius: 0),
                                ],
                              ),
                              child: TextField(
                                minLines: 1,
                                maxLines: 1,
                                textInputAction: TextInputAction.none,
                                textAlignVertical: TextAlignVertical.center,
                                cursorRadius: Radius.circular(10 * rpx),
                                decoration: InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  hintText: '请输入事项标题',
                                  hintStyle:
                                      const TextStyle(color: Colors.grey),
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
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AnimatedToggleSwitch.dual(
                                  current: isForce,
                                  first: false,
                                  second: true,
                                  spacing: 50 * rpx,
                                  height: 80 * rpx,
                                  style: const ToggleStyle(
                                    borderColor: Colors.transparent,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        offset: Offset(0, 1.5),
                                      ),
                                    ],
                                  ),
                                  borderWidth: 10 * rpx,
                                  onChanged: (b) => setState(() => isForce = b),
                                  styleBuilder: (b) => ToggleStyle(
                                    indicatorColor: b
                                        ? const Color.fromARGB(
                                            255, 201, 201, 201)
                                        : const Color.fromARGB(255, 0, 72, 255),
                                  ),
                                  iconBuilder: (value) => value
                                      ? const Icon(
                                          Icons.close,
                                          color: Colors.white,
                                        )
                                      : const Icon(
                                          Icons.done,
                                          color: Colors.white,
                                        ),
                                  textBuilder: (value) => value
                                      ? Center(
                                          child: Text(
                                            '不能结束',
                                            style: TextStyle(
                                              fontSize: 32 * rpx,
                                              color: Colors.black45,
                                            ),
                                          ),
                                        )
                                      : Center(
                                          child: Text(
                                            '强制结束',
                                            style: TextStyle(
                                              fontSize: 32 * rpx,
                                              color: const Color.fromARGB(
                                                  255, 0, 72, 255),
                                            ),
                                          ),
                                        ),
                                ),
                                TimePickerSpinnerPopUp(
                                  mode: CupertinoDatePickerMode.time,
                                  initTime: DateTime.now(),
                                  timeFormat: 'HH:MM',
                                  cancelText: '取消',
                                  confirmText: '确定',
                                  textStyle: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 32 * rpx,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChange: (dateTime) {
                                    // Implement your logic with select dateTime
                                  },
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.fromLTRB(0, 100 * rpx, 0, 0),
                              child: ActionSlider.standard(
                                height: 100 * rpx,
                                backgroundColor:
                                    const Color.fromARGB(255, 247, 247, 247),
                                toggleColor:
                                    const Color.fromARGB(255, 0, 72, 255),
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                                loadingIcon: Icon(
                                  Icons.hive,
                                  color: Colors.white,
                                ),
                                child: Text(
                                  '向右滑动完成',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 32 * rpx,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                action: (controller) async {
                                  controller
                                      .loading(); //starts loading animation
                                  await Future.delayed(
                                    const Duration(seconds: 3),
                                  );
                                  controller
                                      .success(); //starts success animation
                                  // ignore: use_build_context_synchronously
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 150 * rpx,
                        height: 700 * rpx,
                        child: SfSlider.vertical(
                          min: 5.0,
                          max: 200.0,
                          value: time,
                          interval: 20,
                          showTicks: true,
                          showLabels: true,
                          enableTooltip: true,
                          minorTicksPerInterval: 1,
                          inactiveColor:
                              const Color.fromARGB(255, 247, 247, 247),
                          activeColor: const Color.fromARGB(255, 74, 101, 255),
                          onChanged: (dynamic value) {
                            setState(() {
                              time = value.floor();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
