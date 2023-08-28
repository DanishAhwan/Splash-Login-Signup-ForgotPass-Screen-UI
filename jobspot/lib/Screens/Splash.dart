import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jobspot/Screens/SecondSplash.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return SecondSplash();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 4, 90),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2500,
            width: MediaQuery.of(context).size.width * 0.2500,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/assets/logo.png"),
                    filterQuality: FilterQuality.high)),
          ),
        ]),
      ),
    );
  }
}
