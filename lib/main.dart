import 'package:flutter/material.dart';
import 'package:flutter_notifications/src/pages/home_page.dart';
import 'package:flutter_notifications/src/pages/mensaje_page.dart';
import 'package:flutter_notifications/src/providers/push_notifications_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    final pushProvider = PushNotificationProvider();
    pushProvider.initNotifications();
    pushProvider.mensajes.listen((argumento){
      print('Argumento');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Push Local App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'mensaje': (BuildContext context) => MensajePage(),
      },
    );
  }
}
