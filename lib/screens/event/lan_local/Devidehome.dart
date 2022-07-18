import 'dart:convert';

import 'package:fevista/screens/event/lan_local/compass/compass.dart';
import 'package:fevista/screens/event/lan_local/nakath/sinhala/countdown_timer_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'hello'.tr,
              style: const TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
              child: Text(
            'message'.tr,
            style: const TextStyle(fontSize: 20),
          )),
          const SizedBox(
            height: 10,
          ),
          Card(
            child: InkWell(
                borderRadius: BorderRadius.circular(5.0),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CountdownTimerPage()),
                  );
                }, // Image tapped
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.network(
                        'https://raw.githubusercontent.com/Thilina1/Store-Images/main/nakath.png',
                        width: double.infinity,
                        height: 120,
                        fit: BoxFit.fill))),
          ),
          Card(
            child: InkWell(
                borderRadius: BorderRadius.circular(5.0),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const comMyApp()),
                  );
                }, // Image tapped
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.network(
                        'https://raw.githubusercontent.com/Thilina1/Store-Images/main/1200x630wa.png',
                        width: double.infinity,
                        height: 120,
                        fit: BoxFit.fill))),
          ),
          Card(
            child: InkWell(
                borderRadius: BorderRadius.circular(5.0),
                onTap: () {}, // Image tapped
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.network(
                        'https://raw.githubusercontent.com/Thilina1/Store-Images/main/D3EO2KUVAAA8fa3.png',
                        width: double.infinity,
                        height: 120,
                        fit: BoxFit.fill))),
          ),
        ],
      ),
    );
  }

  void sendPushMessage() async {
    try {
      await http.post(
        Uri.parse('https://fcm.googleapis.com/fcm/send'),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authorization':
              'key=AAAA9xPglTQ:APA91bEuI1Hg2Mw6dLpBuh2bDvJfgcYOUm_rEUhq3glaPRzICYtTUQEG6iFF1r_EeWx3B_wC9sTDVxk0x1PYgcSh-N9Di4qG-GNF3LVDjhc9F5B_cfEqvdky-Rc1ILwdAc1oqtB5Ho8v',
        },
        body: jsonEncode(
          <String, dynamic>{
            'notification': <String, dynamic>{
              'body': 'Test Body',
              'title': 'Test Title 2'
            },
            'priority': 'high',
            'data': <String, dynamic>{
              'click_action': 'FLUTTER_NOTIFICATION_CLICK',
              'id': '1',
              'status': 'done'
            },
            "to": "$token",
          },
        ),
      );
    } catch (e) {
      print("error push notification");
    }
  }
}
