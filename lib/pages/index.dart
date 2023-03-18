import 'package:flutter/material.dart';

class Homie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(99, 0, 0, 0),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image(image: AssetImage('assets/images/logo.png')),
              height: 150,
              width: 150,
            ),
            Center(
              child: Text('缔造亚洲智能软件',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  )),
            ),
          ]),
    );
  }
}
