import 'package:fevista/screens/event/lan_local/Devidehome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homepage1 extends StatefulWidget {
  Homepage1({Key? key}) : super(key: key);

  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  final List locale = [
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'සිංහල', 'locale': Locale('sn', 'LK')},
    {'name': 'தமிழ்', 'locale': Locale('tm', 'LK')},
  ];

  @override
  State<Homepage1> createState() => _Homepage1State();
}

class _Homepage1State extends State<Homepage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://raw.githubusercontent.com/Thilina1/Store-Images/main/Capture%20(1).PNG"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    var locale = const Locale('sn', 'LK');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => sinhala_home()),
                    );
                    Get.updateLocale(locale);
                  },
                  child: const Text('සිංහල')),
              ElevatedButton(
                  onPressed: () {
                    var locale = const Locale('en', 'US');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => sinhala_home()),
                    );
                    Get.updateLocale(locale);
                  },
                  child: const Text('English')),
              ElevatedButton(
                  onPressed: () {
                    var locale = const Locale('tm', 'LK');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => sinhala_home()),
                    );
                    Get.updateLocale(locale);
                  },
                  child: const Text('தமிழ்')),
            ],
          ),
        ],
      ),
    ));
  }
}
