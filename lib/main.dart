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
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
    final pushProvider = PushNotificationProvider();
    pushProvider.initNotifications();
    pushProvider.mensajes.listen((data) {
      print('Argumento push');
      print(data);
      navigatorKey.currentState.pushNamed('mensaje', arguments: data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Push Local App',
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'mensaje': (BuildContext context) => MensajePage(),
      },
    );
  }
}
