import 'package:flutter/material.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class Cominglogs extends StatefulWidget {
  const Cominglogs({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CominglogsState createState() => _CominglogsState();
}

class _CominglogsState extends State<Cominglogs> {
  List<TimelineModel> items = [
    TimelineModel(const Placeholder(),
        position: TimelineItemPosition.random,
        iconBackground: Colors.blue,
        icon: const Icon(Icons.blur_circular)),
    TimelineModel(const Placeholder(),
        position: TimelineItemPosition.random,
        iconBackground: Colors.redAccent,
        icon: const Icon(Icons.blur_circular)),
  ];
  @override
  Widget build(BuildContext context) {
    return Timeline(children: items, position: TimelinePosition.Center);
  }
}
