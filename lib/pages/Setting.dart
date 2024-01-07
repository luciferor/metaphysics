import 'package:first_flutter_app/components/base.dart';
import 'package:flutter/material.dart';
import 'package:circular_motion/circular_motion.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    return Base(
      childs: Center(
        child: Container(
          color: Colors.red,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: CircularMotion(
            behavior: HitTestBehavior.translucent,
            centerWidget: Container(
              width: 200 * rpx,
              height: 200 * rpx,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Center(
                child: Text('center'),
              ),
            ),
            children: List.generate(
              10,
              (index) {
                return Container(
                  width: 150 * rpx,
                  height: 150 * rpx,
                  decoration: BoxDecoration(
                    color: Colors.primaries[index],
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text('${index + 1}'),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
