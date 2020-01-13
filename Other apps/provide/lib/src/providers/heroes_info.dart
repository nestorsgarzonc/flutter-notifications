import 'package:flutter/material.dart';

class HeroesInfo with ChangeNotifier {
  String _heroe = 'Capitan america';
  Color colorBase=Colors.blue;
  get heroe {
    return _heroe;
  }

  set heroe(String hero) {
    this._heroe = hero;
    this.colorBase=(hero=='Ironman')?Colors.red: Colors.blue;
    notifyListeners();
  }
}
