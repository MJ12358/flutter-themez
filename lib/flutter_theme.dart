import 'package:flutter/material.dart';
import 'package:flutter_extensions/flutter_extensions.dart';

class Theme {
  Theme({
    int? primaryColor,
    int? secondaryColor,
  })  : _primaryColor =
            primaryColor != null ? Color(primaryColor) : Colors.blue,
        _secondaryColor =
            secondaryColor != null ? Color(secondaryColor) : Colors.orange;

  final Color _primaryColor;
  final Color _secondaryColor;
  final String _fontFamily = 'Primary';

  Color get primaryColor => _primaryColor;
  Color get secondaryColor => _secondaryColor;

  ThemeData light() {
    return ThemeData.light().copyWith(
      appBarTheme: _appBarTheme(),
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
      switchTheme: _switchTheme(),
      textTheme: _lightTextTheme(),
    );
  }

  ThemeData dark() {
    return ThemeData.dark().copyWith(
      // appBarTheme: _appBarTheme(), // works better with defaults
      colorScheme: const ColorScheme.dark().copyWith(
        primary: _primaryColor,
        secondary: _secondaryColor,
        onSecondary: _secondaryColor.blackOrWhite,
      ),
      dividerTheme: _dividerTheme(),
      elevatedButtonTheme: _elevatedButtonTheme(),
      // listTileTheme: _listTileTheme(), // works better with defaults
      switchTheme: _switchTheme(),
      textTheme: _darkTextTheme(),
    );
  }

  AppBarTheme _appBarTheme() {
    return const AppBarTheme().copyWith(
      iconTheme: const IconThemeData().copyWith(
        color: _primaryColor.blackOrWhite,
      ),
      foregroundColor: _primaryColor.blackOrWhite,
    );
  }

  DividerThemeData _dividerTheme() {
    return const DividerThemeData().copyWith(
      space: 2.0,
      thickness: 1.0,
    );
  }

  ElevatedButtonThemeData _elevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(),
        textStyle: const TextStyle().copyWith(
          color: _primaryColor.blackOrWhite, //! not working
          fontWeight: FontWeight.bold,
          letterSpacing: 1.25,
        ),
      ),
    );
  }

  IconThemeData _iconTheme() {
    return const IconThemeData().copyWith(
      color: _primaryColor.blackOrWhite,
    );
  }

  ListTileThemeData _listTileTheme() {
    return const ListTileThemeData().copyWith(
      selectedColor: _secondaryColor.blackOrWhite,
      selectedTileColor: _secondaryColor,
    );
  }

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

  TextTheme _lightTextTheme() {
    return ThemeData.light().textTheme.apply(
          fontFamily: _fontFamily,
        );
  }

  TextTheme _darkTextTheme() {
    return ThemeData.dark().textTheme.apply(
          fontFamily: _fontFamily,
        );
  }
}
