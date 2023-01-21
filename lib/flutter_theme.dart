import 'package:flutter/material.dart';
import 'package:flutter_extensionz/flutter_extensionz.dart';

class FlutterTheme {
  static final FlutterTheme _singleton = FlutterTheme._internal();

  FlutterTheme._internal();

  factory FlutterTheme({
    int? primaryColor,
    int? secondaryColor,
    String? fontFamily,
  }) {
    if (primaryColor != null) {
      _singleton._primaryColor = Color(primaryColor);
    }
    if (secondaryColor != null) {
      _singleton._secondaryColor = Color(secondaryColor);
    }
    if (fontFamily != null) {
      _singleton._fontFamily = fontFamily;
    }
    return _singleton;
  }

  Color _primaryColor = Colors.blue;
  Color _secondaryColor = Colors.orange;
  String _fontFamily = 'Primary';

  Color get primaryColor => _primaryColor;
  Color get secondaryColor => _secondaryColor;
  String get fontFamily => _fontFamily;

  ///
  /// Use this to get a [light] theme
  ///
  ThemeData light() {
    return ThemeData.light().copyWith(
      appBarTheme: _appBarTheme(),
      bottomAppBarTheme: _bottomAppBarTheme(),
      checkboxTheme: _checkboxTheme(),
      chipTheme: _chipTheme(),
      colorScheme: const ColorScheme.light().copyWith(
        primary: _primaryColor,
        primaryContainer: _primaryColor,
        secondary: _secondaryColor,
        onSecondary: _secondaryColor.blackOrWhite,
      ),
      dividerTheme: _dividerTheme(),
      elevatedButtonTheme: _elevatedButtonTheme(),
      iconTheme: _iconTheme(),
      listTileTheme: _listTileTheme(),
      primaryColorLight: _primaryColor.lighten(),
      primaryColorDark: _primaryColor.darken(),
      // primarySwatch:
      radioTheme: _radioTheme(),
      switchTheme: _switchTheme(),
      tabBarTheme: _tabBarTheme(),
      textTheme: _lightTextTheme(),
    );
  }

  ///
  /// Use this to get a [dark] theme
  ///
  ThemeData dark() {
    return ThemeData.dark().copyWith(
      // appBarTheme: _appBarTheme(), // works better with defaults
      bottomAppBarTheme: _bottomAppBarTheme(),
      checkboxTheme: _checkboxTheme(),
      chipTheme: _chipTheme(),
      colorScheme: const ColorScheme.dark().copyWith(
        primary: _primaryColor,
        secondary: _secondaryColor,
        onSecondary: _secondaryColor.blackOrWhite,
      ),
      dividerTheme: _dividerTheme(),
      elevatedButtonTheme: _elevatedButtonTheme(),
      // listTileTheme: _listTileTheme(), // works better with defaults
      radioTheme: _radioTheme(),
      switchTheme: _switchTheme(),
      tabBarTheme: _tabBarTheme(),
      textTheme: _darkTextTheme(),
    );
  }

  ///
  /// AppBar theme
  ///
  AppBarTheme _appBarTheme() {
    return const AppBarTheme().copyWith(
      iconTheme: const IconThemeData().copyWith(
        color: _primaryColor.blackOrWhite,
      ),
      foregroundColor: _primaryColor.blackOrWhite,
    );
  }

  ///
  /// Bottom appBar theme
  ///
  BottomAppBarTheme _bottomAppBarTheme() {
    return const BottomAppBarTheme().copyWith(
      color: _secondaryColor,
    );
  }

  ///
  /// Checkbox theme
  ///
  CheckboxThemeData _checkboxTheme() {
    return const CheckboxThemeData().copyWith(
      checkColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return _primaryColor.blackOrWhite;
          }
          return null;
        },
      ),
      fillColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return _primaryColor;
          }
          return null;
        },
      ),
    );
  }

  ///
  /// Chip theme
  ///
  ChipThemeData _chipTheme() {
    return const ChipThemeData().copyWith(
      backgroundColor: _primaryColor,
      labelStyle: const TextStyle().copyWith(
        color: _primaryColor.blackOrWhite,
      ),
    );
  }

  ///
  /// Divider theme
  ///
  DividerThemeData _dividerTheme() {
    return const DividerThemeData().copyWith(
      space: 2.0,
      thickness: 1.0,
    );
  }

  ///
  /// Elevated button theme
  ///
  ElevatedButtonThemeData _elevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(),
        textStyle: const TextStyle().copyWith(
          color: _primaryColor.blackOrWhite, //! not working
          fontWeight: FontWeight.bold,
          letterSpacing: 1.25,
          fontFamily: _fontFamily,
        ),
      ),
    );
  }

  ///
  /// Icon theme
  ///
  IconThemeData _iconTheme() {
    return const IconThemeData().copyWith(
      color: _primaryColor.blackOrWhite,
    );
  }

  ///
  /// List tile theme
  ///
  ListTileThemeData _listTileTheme() {
    return const ListTileThemeData().copyWith(
      selectedColor: _secondaryColor.blackOrWhite,
      selectedTileColor: _secondaryColor,
    );
  }

  ///
  /// Radio theme
  ///
  RadioThemeData _radioTheme() {
    return const RadioThemeData().copyWith(
      fillColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return _primaryColor;
          }
          return null;
        },
      ),
    );
  }

  ///
  /// Switch theme
  ///
  SwitchThemeData _switchTheme() {
    return const SwitchThemeData().copyWith(
      trackColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return _primaryColor.withOpacity(0.5);
          }
          return null;
        },
      ),
      thumbColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return _primaryColor;
          }
          return null;
        },
      ),
    );
  }

  ///
  /// Tab bar theme
  ///
  TabBarTheme _tabBarTheme() {
    return TabBarTheme();
  }

  ///
  /// Light text theme
  ///
  TextTheme _lightTextTheme() {
    return ThemeData.light().textTheme.apply(
          fontFamily: _fontFamily,
        );
  }

  ///
  /// Dark text theme
  ///
  TextTheme _darkTextTheme() {
    return ThemeData.dark().textTheme.apply(
          fontFamily: _fontFamily,
        );
  }
}
