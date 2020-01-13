import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationProvider {
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

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
      },
      onLaunch: (info) async {
        print('On Launch');
        print(info);
        final noti=info.['data']['comida'];
        
      },
      onResume: (info) async {
        print('On resume');
        print(info);
      },
      onBackgroundMessage: (info) async {
        print('On background');
        print(info);
      },
    );
  }
}
