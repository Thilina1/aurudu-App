import 'package:fevista/screens/event/lan_local/nakath/sinhala/countdown_timer_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aurudu'),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildItem("countdown page", CountdownTimerPage()),
        ],
      ),
    );
  }

  Widget buildItem(String title, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return page;
        }));
      },
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            color: Colors.blue,
            width: double.infinity,
            alignment: Alignment.center,
            height: 100,
            child: Text(
              title,
              style: TextStyle(fontSize: 36),
            ),
          ),
          Container(
            child: ListView(
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Image.network(
                        'https://raw.githubusercontent.com/Thilina1/Store-Images/main/slider_Images/3.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 150,
                      ),
                      ListTile(
                        leading: Icon(Icons.arrow_drop_down_circle),
                        title: const Text('Card title 1'),
                        subtitle: Text(
                          'Secondary Text',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.arrow_drop_down_circle),
                        title: const Text('Card title 1'),
                        subtitle: Text(
                          'Secondary Text',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          FlatButton(
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('ACTION 1'),
                          ),
                          FlatButton(
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('ACTION 2'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
