import 'dart:async';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationProvider {
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  final _mensajesStreamController = StreamController<String>.broadcast();
  Stream<String> get mensajes => _mensajesStreamController.stream;

  Future initNotifications() async {
    _firebaseMessaging.requestNotificationPermissions();
    _firebaseMessaging.getToken().then((token) {
      print("FCM Token");
      print(token);
      //cHDff7tm9oc:APA91bHl1c1bpmuIex8Za8JISc8wzkJFAXjfQUo24GJfrafYepI6pPB51VveQzv9RhONC0AahL0g3Rom4lwDgT7RZsEnsUHWetWb8jElqZLP4tOtkBMVMf17euPo63jtwN5tpXeNwlrv
    });
    _firebaseMessaging.configure(
      onMessage: (info) async {
        print('On message');
        print(info);
        String argumento = 'no-data';
        if (Platform.isAndroid) {
          argumento = info['data']['comida'] ?? 'no-data';
        }
        _mensajesStreamController.sink.add(argumento);
      },
      onLaunch: (info) async {
        print('On Launch');
        print(info);
      },
      onResume: (info) async {
        print('On resume');
        print(info);
        final noti = info['data']['comida'];
        print(noti);
      },
      onBackgroundMessage: (info) async {
        print('On background');
        print(info);
      },
    );
  }

  dispose() {
    _mensajesStreamController?.close();
  }
}
