import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeServices {
  final GetStorage _themeBox = GetStorage();
  final _key = 'isDarkTheme';

  bool _getThemeFromBox() => _themeBox.read<bool>(_key) ?? false;

  _saveThemeToBox(bool isDarkMode) => _themeBox.write(_key, isDarkMode);

  ThemeMode get getTheme =>
      _getThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  switchTheme() {
    Get.changeThemeMode(_getThemeFromBox() ? ThemeMode.dark : ThemeMode.light);
    print(_getThemeFromBox());
    print(getTheme);
    _saveThemeToBox(!_getThemeFromBox());
  }
}
