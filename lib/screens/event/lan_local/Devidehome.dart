// ignore_for_file: deprecated_member_use

import 'dart:convert';

import 'package:fevista/screens/event/lan_local/compass/compass.dart';
import 'package:fevista/screens/event/lan_local/nakath/sinhala/countdown_timer_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class sinhala_home extends StatefulWidget {
  const sinhala_home({Key? key}) : super(key: key);

  @override
  State<sinhala_home> createState() => _sinhala_homeState();
}

class _sinhala_homeState extends State<sinhala_home> {
  String? token = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('title'.tr),
          backgroundColor: const Color.fromARGB(255, 255, 196, 0),
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://raw.githubusercontent.com/Thilina1/Store-Images/main/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  'hello'.tr,
                  style: const TextStyle(fontSize: 34),
                ),
              ),
              const SizedBox(
                height: 270,
              ),
              Center(
                  child: Text(
                'message'.tr,
                style: const TextStyle(
                    fontSize: 25, color: Color.fromARGB(255, 255, 0, 0)),
                textAlign: TextAlign.center,
              )),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.all(25),
                height: 40,
                child: RaisedButton(
                  child: Text(
                    'but'.tr,
                    style: const TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 224, 4, 4)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CountdownTimerPage()),
                    );
                  },
                  color: const Color.fromARGB(255, 250, 192, 2),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(130, 20, 130, 20),
                height: 40,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const comMyApp()),
                      );
                    },
                    child: Column(
                      children: const [
                        Icon(Icons.compass_calibration_sharp),
                        Text("Directions")
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
