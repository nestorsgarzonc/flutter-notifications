import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationProvider {
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  Future initNotifications() {
    _firebaseMessaging.requestNotificationPermissions();
    _firebaseMessaging.getToken().then((token) {
      print("FCM Token");
      print(token);
      //cHDff7tm9oc:APA91bHl1c1bpmuIex8Za8JISc8wzkJFAXjfQUo24GJfrafYepI6pPB51VveQzv9RhONC0AahL0g3Rom4lwDgT7RZsEnsUHWetWb8jElqZLP4tOtkBMVMf17euPo63jtwN5tpXeNwlrv
    });
  }
}
