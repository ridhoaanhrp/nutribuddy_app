import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:nutribuddy_app/Model/model_food.dart';
import 'package:nutribuddy_app/Repository/reposritory.dart';

class Coba2 extends StatefulWidget {
  const Coba2({Key? key}) : super(key: key);

  @override
  State<Coba2> createState() => _Coba2State();
}

class _Coba2State extends State<Coba2> {
  Repository repo = Repository();
  Future<FoodModel>? futureData;
  Future<List<FoodModel>>? data;
  FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();
    // futureData = repo.fetchData();
    data = repo.fetchData();
    AndroidInitializationSettings androidInitialize =
        const AndroidInitializationSettings("@mipmap/ic_launcher");
    IOSInitializationSettings iOSInitialize = const IOSInitializationSettings();
    final initializationSettings =
        InitializationSettings(android: androidInitialize, iOS: iOSInitialize);
    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future<void> _showNotification() async {
    var android = const AndroidNotificationDetails("channelId", "channelName");
    var iOS = const IOSNotificationDetails();
    var platform = NotificationDetails(android: android, iOS: iOS);
    await _flutterLocalNotificationsPlugin
        .show(0, "Selamat Datang", "Enjoy!!!", platform, payload: "payload");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<FoodModel>>(
          future: data,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      title: Text(snapshot.data![index].title),
                    );
                  }));
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            return const Center(child: Text("Data masih kosong"));
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: _showNotification,
        child: const Icon(Icons.notifications),
      ),
    );
  }
}
