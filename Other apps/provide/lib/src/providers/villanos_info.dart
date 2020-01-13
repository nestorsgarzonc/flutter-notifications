import 'package:flutter/material.dart';

class VillanosInfo with ChangeNotifier {
  String _villano = 'Loki';

  get villano {
    return _villano;
  }

  set villano(String bad) {
    _villano = bad;
    notifyListeners();
  }
}
