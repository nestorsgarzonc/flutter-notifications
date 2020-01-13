import 'package:flutter/material.dart';
import 'package:provide/src/pages/home_page.dart';
import 'package:provide/src/providers/heroes_info.dart';
import 'package:provide/src/providers/villanos_info.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HeroesInfo(),
        ),
        ChangeNotifierProvider(
          create: (context) => VillanosInfo(),
        ),
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': (BuildContext context) => HomePage(),
        },
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.red),
        ),
      ),
    );
  }
}
