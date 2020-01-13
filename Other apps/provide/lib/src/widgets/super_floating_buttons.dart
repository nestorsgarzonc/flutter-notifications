import 'package:flutter/material.dart';
import 'package:provide/src/providers/heroes_info.dart';
import 'package:provide/src/providers/villanos_info.dart';
import 'package:provider/provider.dart';

class SuperFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.accessibility_new),
          onPressed: () {
            heroesInfo.heroe = 'Ironman';
            villanosInfo.villano = 'Loki';
          },
          backgroundColor: heroesInfo.colorBase,
        ),
        SizedBox(height: 10),
        FloatingActionButton(
          child: Icon(Icons.accessibility),
          onPressed: () {
            heroesInfo.heroe = 'Thor';
            villanosInfo.villano = 'Groot';
          },
          backgroundColor: heroesInfo.colorBase,
        ),
      ],
    );
  }
}
