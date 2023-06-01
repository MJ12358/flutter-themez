part of flutter_themez;

/// {@template flutter_themez}
/// The entry point for [FlutterThemez].
/// {@endtemplate}
class FlutterThemez {
  /// {@macro flutter_themez}
  factory FlutterThemez({
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

  FlutterThemez._();
  static final FlutterThemez _singleton = FlutterThemez._();

  Color _primaryColor = Colors.blue;
  Color _secondaryColor = Colors.orange;
  String _fontFamily = 'Primary';

  /// The primary color of this theme.
  Color get primaryColor => _primaryColor;

  /// The secondary color of this theme.
  Color get secondaryColor => _secondaryColor;

  /// The font family of this theme.
  String get fontFamily => _fontFamily;

  /// {@macro flutter_themez}
  ///
  /// Use this to get a [ThemeData.light] theme.
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
      navigationRailTheme: _lightNavigationRailTheme(),
      primaryColorLight: _primaryColor.lighten(),
      primaryColorDark: _primaryColor.darken(),
      radioTheme: _radioTheme(),
      switchTheme: _switchTheme(),
      tabBarTheme: _lightTabBarTheme(),
      textTheme: _lightTextTheme(),
    );
  }

  /// {@macro flutter_themez}
  ///
  /// Use this to get a [ThemeData.dark] theme.
  ThemeData dark() {
    return ThemeData.dark().copyWith(
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
      navigationRailTheme: _darkNavigationRailTheme(),
      radioTheme: _radioTheme(),
      switchTheme: _switchTheme(),
      tabBarTheme: _darkTabBarTheme(),
      textTheme: _darkTextTheme(),
    );
  }

  /// AppBar theme.
  AppBarTheme _appBarTheme() {
    return const AppBarTheme().copyWith(
      iconTheme: const IconThemeData().copyWith(
        color: _primaryColor.blackOrWhite,
      ),
      foregroundColor: _primaryColor.blackOrWhite,
    );
  }

  /// Bottom appBar theme.
  BottomAppBarTheme _bottomAppBarTheme() {
    return const BottomAppBarTheme().copyWith(
      color: _secondaryColor,
    );
  }

  /// Checkbox theme.
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

  /// Chip theme.
  ChipThemeData _chipTheme() {
    return const ChipThemeData().copyWith(
      backgroundColor: _primaryColor,
      labelStyle: const TextStyle().copyWith(
        color: _primaryColor.blackOrWhite,
      ),
    );
  }

  /// Divider theme.
  DividerThemeData _dividerTheme() {
    return const DividerThemeData().copyWith(
      space: 2.0,
      thickness: 1.0,
    );
  }

  /// Elevated button theme.
  ElevatedButtonThemeData _elevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: _primaryColor.blackOrWhite,
        shape: const RoundedRectangleBorder(),
        textStyle: const TextStyle().copyWith(
          color: _primaryColor.blackOrWhite,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.25,
          fontFamily: _fontFamily,
        ),
      ),
    );
  }

  /// Icon theme.
  IconThemeData _iconTheme() {
    return const IconThemeData().copyWith(
      color: _primaryColor.blackOrWhite,
    );
  }

  /// List tile theme.
  ListTileThemeData _listTileTheme() {
    return const ListTileThemeData().copyWith(
      selectedColor: _secondaryColor.blackOrWhite,
      selectedTileColor: _secondaryColor,
    );
  }

  /// Light Navigation rail theme.
  NavigationRailThemeData _lightNavigationRailTheme() {
    return ThemeData.light().navigationRailTheme.copyWith(
          indicatorColor: _primaryColor.withOpacity(0.25),
        );
  }

  /// Dark Navigation rail theme.
  /// This is meant to mimic the [BottomNavigationBar] style.
  NavigationRailThemeData _darkNavigationRailTheme() {
    return ThemeData.dark().navigationRailTheme.copyWith(
          indicatorColor: _secondaryColor.withOpacity(0.25),
          selectedLabelTextStyle: TextStyle(
            color: _secondaryColor,
          ),
          selectedIconTheme: IconThemeData(
            color: _secondaryColor,
          ),
        );
  }

  /// Radio theme.
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

  /// Switch theme.
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

  /// Light tab bar theme.
  TabBarTheme _lightTabBarTheme() {
    return TabBarTheme(
      labelColor: _primaryColor.blackOrWhite,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: _primaryColor.blackOrWhite,
          width: 2.0,
        ),
      ),
    );
  }

  /// Dark tab bar theme.
  TabBarTheme _darkTabBarTheme() {
    return TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: _primaryColor,
          width: 2.0,
        ),
      ),
    );
  }

  /// Light text theme.
  TextTheme _lightTextTheme() {
    return ThemeData.light().textTheme.apply(
          fontFamily: _fontFamily,
        );
  }

  /// Dark text theme.
  TextTheme _darkTextTheme() {
    return ThemeData.dark().textTheme.apply(
          fontFamily: _fontFamily,
        );
  }
}
