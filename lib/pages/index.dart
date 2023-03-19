import 'package:flutter/material.dart';

class Homie extends StatefulWidget {
  const Homie({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  HomieState createState() => HomieState();
}

class HomieState extends State<Homie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image(image: AssetImage('assets/images/logo.png')),
              height: 150,
              width: 150,
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text('缔造亚洲智能软件',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'cs',
                    color: Colors.black,
                  )),
            ),
          ]),
    );
  }
}
