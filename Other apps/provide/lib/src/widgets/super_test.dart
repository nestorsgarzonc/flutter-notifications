import 'package:flutter/material.dart';
import 'package:provide/src/providers/heroes_info.dart';
import 'package:provide/src/providers/villanos_info.dart';
import 'package:provider/provider.dart';

class SuperText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          heroesInfo.heroe,
          style: TextStyle(fontSize: 34, color: heroesInfo.colorBase),
        ),
        SizedBox(height: 10),
        Text(
          villanosInfo.villano,
          style: TextStyle(fontSize: 34, color: Colors.purpleAccent),
        ),
      ],
    );
  }
}
