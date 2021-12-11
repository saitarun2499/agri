import 'dart:async';
import 'package:agri/dashboard.dart';
import 'package:flutter/material.dart';

class SlashScreen extends StatefulWidget {
  const SlashScreen({Key? key}) : super(key: key);

  @override
  _SlashScreenState createState() => _SlashScreenState();
}

class _SlashScreenState extends State<SlashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Dash()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.greenAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/klu.jpg',
                      height: 150,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50.0,
                      child: Icon(
                        Icons.yard,
                        color: Colors.black,
                        size: 50.0,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 10.0)),
                    const Text(
                      "Mirchi Mitra",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Image.asset(
                      'images/dstlogo.jpg',
                      width: 200.0,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
