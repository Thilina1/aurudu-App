import 'package:fevista/screens/event/LacaleString.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:get/get.dart';

class Mainevent extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: LocaleString(),
      locale: Locale('en', 'US'),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage1(),
    );
  }
}
