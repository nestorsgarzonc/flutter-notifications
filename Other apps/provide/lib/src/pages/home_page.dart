import 'package:flutter/material.dart';
import 'package:provide/src/providers/heroes_info.dart';
import 'package:provide/src/widgets/super_floating_buttons.dart';
import 'package:provide/src/widgets/super_test.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(heroesInfo.heroe),
      ),
      body: Center(child: SuperText()),
      floatingActionButton: SuperFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
