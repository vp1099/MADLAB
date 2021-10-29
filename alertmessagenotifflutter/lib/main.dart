import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  String? name;
  showNotif(String title, String body) async {
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');
    const InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid, iOS: null, macOS: null);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails("TestChannelId", "TestChannelName",
            channelDescription: "TestChannelDesc");
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
        0, title, body, platformChannelSpecifics);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Name Sayer',
      home: Scaffold(
        appBar: AppBar(title: const Text("Say your Name")),
        body: Container(
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                TextField(
                  controller: myController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text("your name")),
                ),
                TextButton(
                    onPressed: () {
                      showNotif(
                          "Your name", "Your name is ${myController.text}");
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blueAccent),
                    ),
                    child: Text(
                      "click",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            )),
      ),
    );
  }
}
