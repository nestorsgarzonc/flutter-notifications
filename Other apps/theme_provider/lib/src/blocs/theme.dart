import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData _themedata;

  ThemeChanger(this._themedata);

  get theme {
    return _themedata;
  }

  set theme(ThemeData theme) {
    this._themedata = theme;
    notifyListeners();
  }
}
