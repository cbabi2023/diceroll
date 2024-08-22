import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _imagePath = "assets/images/button.png";
  final Random _random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(_imagePath),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _imagePath = imageList[_random.nextInt(imageList.length)];
                });
              },
              child: Text("Roll Dice"),
            ),
          ],
        ),
      ),
    );
  }
}

List imageList = [
  "assets/images/d1.png",
  "assets/images/d2.png",
  "assets/images/d3.png",
  "assets/images/d4.png",
  "assets/images/d5.png",
  "assets/images/d6.png",
];
