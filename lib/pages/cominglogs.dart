import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:orbitmenu/animated_orbit_menu.dart';
import 'package:orbitmenu/item.dart';
import 'package:orbitmenu/orbit_menu_animation_type.dart';
import 'package:orbitmenu/orbit_menu_config.dart';
import 'package:flutter_sliding_panel/flutter_sliding_panel.dart';

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
    int numberOfItems = 15;
    List<Item> itemList = List.generate(
        numberOfItems,
        (i) => Item(
            title: (i + 1).toString(),
            onPressed: () {
              print('touch $i');
            },
            image: ''));
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
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(100),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: const DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
            ),
          ),
        ),
        Positioned(
          right: -MediaQuery.of(context).size.width / 2 +
              MediaQuery.of(context).size.width / 2,
          width: MediaQuery.of(context).size.width +
              MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height,
          child: AnimatedOrbitMenu(
            animate: true,
            config: OrbitMenuConfig(
              animationDuration: const Duration(seconds: 50),
              animationType: OrbitMenuAnimationType.rotating,
              menuPositionX: MediaQuery.of(context).size.width / 2,
              menuPositionY: MediaQuery.of(context).size.height / 2,
              menuColor: Colors.deepPurple,
              radius: 200,
              menuItems: itemList,
              titleStyle: const TextStyle(color: Colors.white),
              itemSize: 80,
              itemColor: Colors.deepPurple,
              itemBorderColor: Colors.white,
              borderCentralMenuColor: Colors.white,
              itemOffsetPercentage: 0.5,
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
