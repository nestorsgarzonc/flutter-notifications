import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_provider/src/blocs/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProv = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('TITLE'),
        centerTitle: true,
      ),
      body: listaBotones(context),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.local_hospital),
        onPressed: () {
          themeProv.theme = ThemeData(
            appBarTheme: AppBarTheme(color: Colors.orange),
            backgroundColor: Colors.white,
            bottomAppBarColor: Colors.orangeAccent,
            floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.orangeAccent),
            iconTheme: IconThemeData(color: Colors.white),
            buttonColor: Colors.orangeAccent,
            primaryColor: Colors.orange,
            accentColor: Colors.orangeAccent,
          
          );
        },
      ),
    );
  }

  Widget listaBotones(BuildContext context) {
    final themeProv = Provider.of<ThemeChanger>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            child: Text('Light'),
            onPressed: ()=> themeProv.theme=ThemeData.light(),
            color: Colors.blue,
          ),
          FlatButton(
            child: Text('Dark'),
            onPressed: ()=> themeProv.theme=ThemeData.dark(),
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
