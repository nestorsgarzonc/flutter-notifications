import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_provider/src/blocs/theme.dart';
import 'package:theme_provider/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeChanger(ThemeData.dark()),
      child: MaterialAppTheme(),
    );
  }
}

class MaterialAppTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProv = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      theme: themeProv.theme,
      routes: {
        'home': (BuildContext context) => HomePage(),
      },
    );
  }
}
