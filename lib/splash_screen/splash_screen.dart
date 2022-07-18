import 'package:fevista/screens/event/HomePage.dart';
import 'package:fevista/screens/event/mainevent.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Mainevent()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/spacex.png"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("assets/images/logo.png"),
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            const Text(
              'Aurudu 2023',
              style: TextStyle(fontSize: 50.0, color: Colors.white),
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            const SizedBox(
              height: 20,
            ),
            SleekCircularSlider(
              min: 0,
              max: 100,
              initialValue: 100,
              appearance: CircularSliderAppearance(
                infoProperties: InfoProperties(
                    mainLabelStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                )),
                customColors: CustomSliderColors(
                    dotColor: Colors.white,
                    progressBarColor: Colors.black,
                    shadowColor: Colors.white,
                    trackColor: Colors.white),
                spinnerDuration: 5,
                animDurationMultiplier: 4,
                animationEnabled: true,
                startAngle: 0.0,
                angleRange: 360,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Initializing app...',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
