import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:get/get.dart';

class CountdownTimerPage extends StatefulWidget {
  @override
  _CountdownTimerPageState createState() => _CountdownTimerPageState();
}

class _CountdownTimerPageState extends State<CountdownTimerPage> {
  late CountdownTimerController controller;
  int endTime1 = DateTime(2023, 04, 14, 03, 48, 00).millisecondsSinceEpoch;
  int endTime2 = DateTime(2023, 04, 14, 05, 58, 00).millisecondsSinceEpoch;
  int endTime3 = DateTime(2023, 04, 14, 06, 12, 00).millisecondsSinceEpoch;
  int endTime4 = DateTime(2023, 04, 14, 07, 46, 00).millisecondsSinceEpoch;
  int endTime5 = DateTime(2023, 04, 16, 09, 06, 00).millisecondsSinceEpoch;
  int endTime6 = DateTime(2023, 04, 17, 23, 00, 00).millisecondsSinceEpoch;
  @override
  void initState() {
    super.initState();
    controller = CountdownTimerController(endTime: endTime1, onEnd: onEnd);
    controller = CountdownTimerController(endTime: endTime2, onEnd: onEnd);
    controller = CountdownTimerController(endTime: endTime3, onEnd: onEnd);
    controller = CountdownTimerController(endTime: endTime4, onEnd: onEnd);
    controller = CountdownTimerController(endTime: endTime5, onEnd: onEnd);
    controller = CountdownTimerController(endTime: endTime6, onEnd: onEnd);
  }

  void onEnd() {
    print('onEnd');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nakath"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 196, 0),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'nakath2'.tr,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: CountdownTimer(
              textStyle: const TextStyle(
                fontSize: 30,
                color: Colors.red,
              ),
              onEnd: onEnd,
              endTime: endTime1,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.network(
                  'https://raw.githubusercontent.com/Thilina1/Store-Images/main/1.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 150,
                ),
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: Text('nakath1'.tr),
                  subtitle: CountdownTimer(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                    ),
                    onEnd: onEnd,
                    endTime: endTime1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'nakath1-1'.tr,
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.network(
                  'https://raw.githubusercontent.com/Thilina1/Store-Images/main/2.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 150,
                ),
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: Text('nakath2'.tr),
                  subtitle: CountdownTimer(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                    ),
                    onEnd: onEnd,
                    endTime: endTime2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'nakath2-1'.tr,
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.network(
                  'https://raw.githubusercontent.com/Thilina1/Store-Images/main/3.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 150,
                ),
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: Text('nakath3'.tr),
                  subtitle: CountdownTimer(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                    ),
                    onEnd: onEnd,
                    endTime: endTime3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'nakath3-1'.tr,
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.network(
                  'https://raw.githubusercontent.com/Thilina1/Store-Images/main/4.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 150,
                ),
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: Text('nakath4'.tr),
                  subtitle: CountdownTimer(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                    ),
                    onEnd: onEnd,
                    endTime: endTime4,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'nakath4-1'.tr,
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.network(
                  'https://raw.githubusercontent.com/Thilina1/Store-Images/main/5.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 150,
                ),
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: Text('nakath5'.tr),
                  subtitle: CountdownTimer(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                    ),
                    onEnd: onEnd,
                    endTime: endTime5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'nakath5-1'.tr,
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.network(
                  'https://raw.githubusercontent.com/Thilina1/Store-Images/main/6.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 150,
                ),
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: Text('nakath6'.tr),
                  subtitle: CountdownTimer(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                    ),
                    onEnd: onEnd,
                    endTime: endTime6,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'nakath6-1'.tr,
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
