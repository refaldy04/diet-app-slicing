import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fitness/pages/home.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatefulWidget {
  const LottieAnimation({super.key});

  @override
  State<LottieAnimation> createState() => _LottieAnimationState();
}

class _LottieAnimationState extends State<LottieAnimation> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: ((context) => const HomePage())));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9DCEFF),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        // from network
        // Lottie.network(
        //   "https://lottie.host/fe49b2b5-f3bb-4ee6-869d-666715a612d7/NXSc6c8NCO.json",
        // )
        // from asset
        Lottie.asset('assets/lottie/food-animation.json'),
        Lottie.network(
            'https://lottie.host/5b212a78-b4d8-42e5-a319-3886dbb630ae/ywl5Zqr6FM.json')
      ]),
    );
  }
}
