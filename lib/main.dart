import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white10,
            title: Text(
              '8ball',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          body: eightpage()),
    ),
  );
}

class eightpage extends StatefulWidget {
  const eightpage({Key? key}) : super(key: key);

  @override
  State<eightpage> createState() => _eightpageState();
}

class _eightpageState extends State<eightpage> {
  int randomball = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            randomball = Random().nextInt(5) + 1;
          });

          print('test');
        },
        child: Image.asset('images/magic_8ball_${randomball}.png'),
      ),
    );
  }
}
