import 'package:card_swiper/card_swiper.dart';
import 'package:dio/dio.dart';
import 'package:first_flutter_app/classes/apis.dart';
import 'package:first_flutter_app/classes/https.dart';
import 'package:first_flutter_app/classes/showmsg.dart';
import 'package:first_flutter_app/classes/singleres.dart';
import 'package:first_flutter_app/classes/todos.dart';
import 'package:first_flutter_app/classes/userinfos.dart';
import 'package:first_flutter_app/components/ani.dart';
import 'package:first_flutter_app/pages/ai.dart';
import 'package:first_flutter_app/pages/coming.dart';
import 'package:first_flutter_app/pages/cominglogs.dart';
import 'package:first_flutter_app/pages/login.dart';
import 'package:first_flutter_app/pages/mine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:date_format/date_format.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get_storage/get_storage.dart';
import 'package:time_range_picker/time_range_picker.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> with SingleTickerProviderStateMixin {
  final storage = GetStorage();
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
  TimeOfDay st = const TimeOfDay(hour: 06, minute: 0);
  TimeOfDay et = const TimeOfDay(hour: 09, minute: 0);
  dynamic time = 30;
  Message userInfo = Message();

  DateTime selectDate = DateTime.now();
  String? icon;
  String? title;
  bool isForce = true;
  String? startTime;
  String? endTime;
  int? minutes;

  List<Tmessage> todoList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // storage.remove('authorzation');
    handleUserinfo();
    handleTodo();
  }

  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    double tp = MediaQuery.of(context).padding.top;
    double bp = MediaQuery.of(context).padding.bottom;
    return Column(
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
                          padding:
                              EdgeInsets.fromLTRB(0, 0, 10 * rpx, 20 * rpx),
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            'assets/images/icons/vip.svg',
                            width: 40 * rpx,
                            height: 40 * rpx,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              userInfo.nickname ?? '无昵称',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 32 * rpx,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              'Lv25',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 255, 215, 39),
                                fontSize: 18 * rpx,
                              ),
                            ),
                          ],
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
                      child: Image(
                        image: NetworkImage(userInfo.avator ??
                            'https://pic2.zhimg.com/80/v2-86116449634292f991d2b38eaf7f7509_1440w.webp'),
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
                            color: Color.fromARGB(100, 0, 0, 0),
                          ),
                        ),
                        Text(
                          formatDate(
                            selectDate,
                            [yyyy, '年', 'mm', '月', dd, '日'],
                          ).toString(),
                          style: TextStyle(
                            fontSize: 32 * rpx,
                            color: const Color.fromARGB(100, 0, 0, 0),
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
                      backgroundColor: const Color.fromARGB(255, 247, 247, 247),
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
                firstDate: DateTime.now(),
                focusDate: selectDate,
                // locale: 'zh-CN', //目前报错
                showTimelineHeader: false,
                lastDate: DateTime.now().add(
                  const Duration(days: 365),
                ),
                activeColor: const Color.fromARGB(100, 193, 191, 207),
                dayProps: EasyDayProps(
                  width: 100 * rpx,
                  height: 120 * rpx,
                  dayStructure: DayStructure.dayStrDayNum,
                  activeDayStyle: DayStyle(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30 * rpx),
                      ),
                      gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color.fromARGB(200, 45, 85, 245),
                          Color.fromARGB(200, 45, 85, 245),
                        ],
                      ),
                    ),
                    dayNumStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 40 * rpx,
                    ),
                    dayStrStyle: TextStyle(
                      color: Colors.white54,
                      fontSize: 20 * rpx,
                    ),
                    monthStrStyle: TextStyle(
                      color: Colors.white30,
                      fontSize: 20 * rpx,
                    ),
                  ),
                  inactiveDayStyle: DayStyle(
                    borderRadius: 20 * rpx,
                  ),
                  // ignore: deprecated_member_use
                  inactiveDayDecoration: BoxDecoration(
                    color: const Color.fromARGB(255, 247, 247, 247),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30 * rpx),
                    ),
                  ),
                ),
                onDateChange: (date) {
                  setState(() {
                    selectDate = date;
                  });
                  handleTodo();
                },
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.fromLTRB(40 * rpx, 0, 40 * rpx, bp),
            child: AnimationLimiter(
              child: ListView(
                children: todoList.map(
                  (todo) {
                    var index = icons.indexOf(todo.title!);
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
                            padding: EdgeInsets.all(30 * rpx),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40 * rpx),
                              child: SvgPicture.asset(
                                todo.icon!,
                                width: 40 * rpx,
                                height: 40 * rpx,
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
                                    todo.title!,
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
                                      todo.startTime!,
                                      style: TextStyle(
                                        fontSize: 20 * rpx,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black38,
                                      ),
                                    ),
                                  ),
                                  ProgressBar(
                                    value: todo.progress!.toDouble(),
                                    width: 190 * rpx,
                                    height: 10 * rpx,
                                    gradient: const LinearGradient(
                                      colors: [
                                        Colors.blue,
                                        Colors.purple,
                                      ],
                                    ),
                                    backgroundColor:
                                        Colors.grey.withOpacity(0.4),
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
                              color: const Color.fromARGB(100, 197, 197, 197),
                              borderRadius: BorderRadius.circular(30 * rpx),
                            ),
                            child: Text(
                              '${todo.minutes!} 分钟',
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
                              heroTag: index,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Coming(id: todo.id),
                                  ),
                                );
                              },
                              backgroundColor:
                                  const Color.fromARGB(151, 45, 85, 245),
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
        ),
      ],
    );
  }

  void openBottomSheetHandler(BuildContext context, double rpx, double bp) {
    showBottomSheet(
      context: context,
      builder: (context) => StatefulBuilder(
        // builder: (BuildContext context, void Function(void Function()) setState) {  },
        builder: (BuildContext buildcontext,
            void Function(void Function()) setState) {
          return Container(
            height: 1295 * rpx,
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 40 * rpx, 0, 40 * rpx),
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
                                height: 280 * rpx,
                                child: GridView.count(
                                  crossAxisCount: 5,
                                  children: icons
                                      .map(
                                        (item) => Container(
                                          padding: EdgeInsets.all(10 * rpx),
                                          child: FloatingActionButton(
                                            elevation: 0,
                                            focusElevation: 0,
                                            highlightElevation: 0,
                                            backgroundColor: icon == item
                                                ? const Color.fromARGB(
                                                    255, 217, 217, 255)
                                                : const Color.fromARGB(
                                                    255, 247, 247, 247),
                                            child: SvgPicture.asset(
                                              item,
                                              width: 50 * rpx,
                                              height: 50 * rpx,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                icon = item;
                                              });
                                            },
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(
                                    20 * rpx, 10 * rpx, 20 * rpx, 10 * rpx),
                                margin: EdgeInsets.fromLTRB(
                                    0, 30 * rpx, 0, 40 * rpx),
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 247, 247, 247),
                                  borderRadius: BorderRadius.circular(30 * rpx),
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
                                  onChanged: (value) {
                                    setState(() {
                                      title = value;
                                    });
                                  },
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FlutterSwitch(
                                        width: 100 * rpx,
                                        height: 60 * rpx,
                                        valueFontSize: 10 * rpx,
                                        toggleSize: 30 * rpx,
                                        value: isForce,
                                        borderRadius: 40 * rpx,
                                        padding: 10 * rpx,
                                        showOnOff: false,
                                        inactiveColor: const Color.fromARGB(
                                            255, 220, 220, 220),
                                        activeColor: const Color.fromARGB(
                                            200, 0, 72, 255),
                                        onToggle: (val) {
                                          setState(() {
                                            isForce = val;
                                          });
                                        },
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            20 * rpx, 0, 0, 0),
                                        child: Text(
                                          '强制结束',
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 28 * rpx,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(
                                        20 * rpx, 10 * rpx, 20 * rpx, 10 * rpx),
                                    margin:
                                        EdgeInsets.fromLTRB(20 * rpx, 0, 0, 0),
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 247, 247, 247),
                                      borderRadius:
                                          BorderRadius.circular(30 * rpx),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                            '${st.hour}:${st.minute} - ${et.hour}:${et.minute}'),
                                        SizedBox(width: 100 * rpx),
                                        Text(
                                          '${((DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, et.hour, et.minute).difference(DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, st.hour, st.minute))).inMinutes).abs() > 360 ? 1440 - ((DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, et.hour, et.minute).difference(DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, st.hour, st.minute))).inMinutes).abs() : ((DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, et.hour, et.minute).difference(DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, st.hour, st.minute))).inMinutes).abs()}分钟',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 28 * rpx,
                                            color: const Color.fromARGB(
                                                255, 0, 72, 255),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 480 * rpx,
                                alignment: Alignment.center,
                                margin: EdgeInsets.fromLTRB(
                                    0, 20 * rpx, 0, 20 * rpx),
                                child: TimeRangePicker(
                                  hideTimes: true,
                                  hideButtons: true,
                                  autoAdjustLabels: true,
                                  strokeWidth: 10 * rpx,
                                  ticks: 48,
                                  ticksOffset: 5 * rpx,
                                  ticksLength: 20 * rpx,
                                  handlerRadius: 20 * rpx,
                                  ticksColor: Colors.grey,
                                  rotateLabels: false,
                                  labels: [
                                    "24 h",
                                    "3 h",
                                    "6 h",
                                    "9 h",
                                    "12 h",
                                    "15 h",
                                    "18 h",
                                    "21 h"
                                  ].asMap().entries.map((e) {
                                    return ClockLabel.fromIndex(
                                        idx: e.key, length: 8, text: e.value);
                                  }).toList(),
                                  labelOffset: 50 * rpx,
                                  padding: 100 * rpx,
                                  labelStyle: TextStyle(
                                    fontSize: 24 * rpx,
                                    color: Colors.black,
                                  ),
                                  interval: const Duration(minutes: 5),
                                  maxDuration: const Duration(minutes: 360),
                                  start: st,
                                  end: et,
                                  clockRotation: 360.0,
                                  onStartChange: (start) {
                                    setState(() {
                                      st = start;
                                      startTime = '${st.hour}:${st.minute}:00';
                                      minutes = ((DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, et.hour, et.minute).difference(DateTime(
                                                          DateTime.now().year,
                                                          DateTime.now().month,
                                                          DateTime.now().day,
                                                          st.hour,
                                                          st.minute)))
                                                      .inMinutes)
                                                  .abs() >
                                              360
                                          ? 1440 -
                                              ((DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, et.hour, et.minute).difference(DateTime(
                                                          DateTime.now().year,
                                                          DateTime.now().month,
                                                          DateTime.now().day,
                                                          st.hour,
                                                          st.minute)))
                                                      .inMinutes)
                                                  .abs()
                                          : ((DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, et.hour, et.minute)
                                                      .difference(DateTime(
                                                          DateTime.now().year,
                                                          DateTime.now().month,
                                                          DateTime.now().day,
                                                          st.hour,
                                                          st.minute)))
                                                  .inMinutes)
                                              .abs();
                                    });
                                  },
                                  onEndChange: (end) {
                                    setState(() {
                                      et = end;
                                      endTime = '${et.hour}:${et.minute}:00';
                                      minutes = ((DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, et.hour, et.minute).difference(DateTime(
                                                          DateTime.now().year,
                                                          DateTime.now().month,
                                                          DateTime.now().day,
                                                          st.hour,
                                                          st.minute)))
                                                      .inMinutes)
                                                  .abs() >
                                              360
                                          ? 1440 -
                                              ((DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, et.hour, et.minute).difference(DateTime(
                                                          DateTime.now().year,
                                                          DateTime.now().month,
                                                          DateTime.now().day,
                                                          st.hour,
                                                          st.minute)))
                                                      .inMinutes)
                                                  .abs()
                                          : ((DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, et.hour, et.minute)
                                                      .difference(DateTime(
                                                          DateTime.now().year,
                                                          DateTime.now().month,
                                                          DateTime.now().day,
                                                          st.hour,
                                                          st.minute)))
                                                  .inMinutes)
                                              .abs();
                                    });
                                  },
                                ),
                              ),
                              Container(
                                width: 400,
                                alignment: Alignment.center,
                                margin: EdgeInsets.fromLTRB(0, 20 * rpx, 0, 0),
                                child: FloatingActionButton(
                                  onPressed: () async {
                                    if (icon!.isEmpty) {
                                      pubMsg.showError('请选择一个专注事项图标～', context);
                                      return;
                                    }
                                    if (title!.isEmpty) {
                                      pubMsg.showError('请输入一个专注事项标题～', context);
                                      return;
                                    }
                                    if (title!.isEmpty) {
                                      pubMsg.showError(
                                          '请选择一个专注事项时间段～', context);
                                      return;
                                    }
                                    await Future.delayed(
                                      const Duration(seconds: 3),
                                    );

                                    Https https = Https();
                                    Map<String, dynamic> params = {
                                      "icon": icon,
                                      "title": title,
                                      "start": startTime,
                                      "end": endTime,
                                      "isforce": isForce ? 1 : 0,
                                      "minutes": minutes,
                                      "date":
                                          '${selectDate.year}-${selectDate.month}-${selectDate.day}',
                                    };
                                    Response res = await https.post(
                                        Apis.addtodoapi, params);
                                    Singleres st = Singleres.fromJson(res.data);
                                    if (st.status!) {
                                      // ignore: use_build_context_synchronously
                                      pubMsg.showSuccess(st.message!, context);
                                      handleTodo();
                                      // ignore: use_build_context_synchronously
                                      Navigator.pop(context);
                                    } else {
                                      // ignore: use_build_context_synchronously
                                      pubMsg.showError(st.message!, context);
                                    }
                                  },
                                  isExtended: true,
                                  child: const Icon(Icons.save),
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
        },
      ),
    );
  }

  void handleUserinfo() async {
    String token = storage.read('authorzation') ?? '';
    if (token.isNotEmpty) {
      Https https = Https();
      Map<String, dynamic> params = {};
      Response res = await https.post(Apis.getuserinfoapi, params);
      Userinfos sr = Userinfos.fromJson(res.data);
      setState(() {
        userInfo = sr.message!;
      });
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Login(),
        ),
      );
    }
  }

  void handleTodo() async {
    Https https = Https();
    Map<String, dynamic> params = {
      "date": '${selectDate.year}-${selectDate.month}-${selectDate.day}',
    };
    Response res = await https.post(Apis.gettodolistapi, params);
    Todos sr = Todos.fromJson(res.data);
    setState(() {
      todoList = sr.message!;
    });
  }
}
