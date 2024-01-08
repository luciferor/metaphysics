import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sliding_panel/flutter_sliding_panel.dart';
import 'package:interactive_slider/interactive_slider.dart';

class Cominglogs extends StatefulWidget {
  const Cominglogs({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CominglogsState createState() => _CominglogsState();
}

class _CominglogsState extends State<Cominglogs> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
          image: const AssetImage(
              'assets/images/59aaf55f7919585b29ff6a4cccd80770.jpg'),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(100),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: const DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
            ),
          ),
        ),
        SlidingPanel(
          controller: SlidingPanelController(),
          config: SlidingPanelConfig(
            anchorPosition: MediaQuery.of(context).size.height / 2,
            expandPosition: MediaQuery.of(context).size.height - 200,
          ),
          panelContent: Text(
            '\nDRAG ME!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              letterSpacing: -1,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}
