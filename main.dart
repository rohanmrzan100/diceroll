// ignore_for_file: deprecated_member_use

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "rolldice",
    home: home_page(),
  ));
}

class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  int leftdicenum = 1;
  void rolldice1() {
    setState(() {
      leftdicenum = Random().nextInt(6) + 1;
    });
  }

  int rightdicenum = 1;
  void rolldice2() {
    setState(() {
      rightdicenum = Random().nextInt(6) + 1;
    });
  }

  void rollboth() {
    setState(() {
      rightdicenum = Random().nextInt(6) + 1;
      leftdicenum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text(
            'Dice Roll',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.red,
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    child: Text(
                      '$leftdicenum',
                      style:
                          TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                    ),
                  ),
                  FlatButton(
                    color: Colors.blue[600],
                    onPressed: rolldice1,
                    child: Image.asset(
                      "$leftdicenum.png",
                      height: 160,
                      width: 140,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    child: Text(
                      '$rightdicenum',
                      style:
                          TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                    ),
                  ),
                  FlatButton(
                    color: Colors.yellow[600],
                    child: Image.asset(
                      "$rightdicenum.png",
                      height: 160,
                      width: 140,
                    ),
                    onPressed: rolldice2,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: rollboth, child: Text('Roll both dicess'))
        ],
      ),
    );
  }
}
