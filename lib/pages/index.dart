import 'package:flutter/material.dart';

class Homie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(100, 255, 255, 255),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text('Hello Flutter!',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  )),
            ),
          ]),
    );
  }
}
