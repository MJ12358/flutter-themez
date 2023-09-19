part of flutter_themez;

/// {@template flutter_themez}
/// The entry point for [FlutterThemez].
/// {@endtemplate}
class FlutterThemez {
  static FlutterThemez? _instance;

  FlutterThemez._({
    required this.primaryColor,
    required this.secondaryColor,
    required this.fontFamily,
    required this.appBarTheme,
    required this.bottomAppBarTheme,
    required this.checkboxTheme,
    required this.chipTheme,
    required this.dividerTheme,
    required this.elevatedButtonTheme,
    required this.iconTheme,
    required this.listTileTheme,
    required this.navigationRailTheme,
    required this.radioTheme,
    required this.switchTheme,
    required this.tabBarTheme,
    required this.textTheme,
  });

  /// {@macro flutter_themez}
  // ignore: sort_unnamed_constructors_first
  factory FlutterThemez({
    Color? primaryColor,
    Color? secondaryColor,
    String? fontFamily,
    AppBarTheme? appBarTheme,
    BottomAppBarTheme? bottomAppBarTheme,
    CheckboxThemeData? checkboxTheme,
    ChipThemeData? chipTheme,
    DividerThemeData? dividerTheme,
    ElevatedButtonThemeData? elevatedButtonTheme,
    IconThemeData? iconTheme,
    ListTileThemeData? listTileTheme,
    NavigationRailThemeData? navigationRailTheme,
    RadioThemeData? radioTheme,
    SwitchThemeData? switchTheme,
    TabBarTheme? tabBarTheme,
    TextTheme? textTheme,
  }) {
    final Color _primaryColor = primaryColor ?? Colors.blue;
    final Color _secondaryColor = secondaryColor ?? Colors.orange;
    final String _fontFamily = fontFamily ?? 'Primary';

    return _instance ??= FlutterThemez._(
      primaryColor: _primaryColor,
      secondaryColor: _secondaryColor,
      fontFamily: _fontFamily,
      appBarTheme: appBarTheme ?? _defaultAppBarTheme(_primaryColor),
      bottomAppBarTheme:
          bottomAppBarTheme ?? _defaultBottomAppBarTheme(_secondaryColor),
      checkboxTheme: checkboxTheme ?? _defaultCheckboxTheme(_primaryColor),
      chipTheme: chipTheme ?? _defaultChipTheme(_primaryColor),
      dividerTheme: dividerTheme ?? _defaultDividerTheme(),
      elevatedButtonTheme: elevatedButtonTheme ??
          _defaultElevatedButtonTheme(_primaryColor, _fontFamily),
      iconTheme: iconTheme ?? _defaultIconTheme(_primaryColor),
      listTileTheme: listTileTheme ?? _defaultListTileTheme(_secondaryColor),
      navigationRailTheme: navigationRailTheme,
      radioTheme: radioTheme ?? _defaultRadioTheme(_primaryColor),
      switchTheme: switchTheme ?? _defaultSwitchTheme(_primaryColor),
      tabBarTheme: tabBarTheme,
      textTheme: textTheme,
    );
  }

  final Color primaryColor;
  final Color secondaryColor;
  final String fontFamily;
  final AppBarTheme appBarTheme;
  final BottomAppBarTheme bottomAppBarTheme;
  final CheckboxThemeData checkboxTheme;
  final ChipThemeData chipTheme;
  final DividerThemeData dividerTheme;
  final ElevatedButtonThemeData elevatedButtonTheme;
  final IconThemeData iconTheme;
  final ListTileThemeData listTileTheme;
  final NavigationRailThemeData? navigationRailTheme;
  final RadioThemeData radioTheme;
  final SwitchThemeData switchTheme;
  final TabBarTheme? tabBarTheme;
  final TextTheme? textTheme;

  /// {@macro flutter_themez}
  ///
  /// Use this to get a [ThemeData.light] theme.
  ThemeData light() {
    return ThemeData.light().copyWith(
      appBarTheme: appBarTheme,
      bottomAppBarTheme: bottomAppBarTheme,
      checkboxTheme: checkboxTheme,
      chipTheme: chipTheme,
      colorScheme: const ColorScheme.light().copyWith(
        primary: primaryColor,
        primaryContainer: primaryColor,
        secondary: secondaryColor,
        onSecondary: secondaryColor.blackOrWhite,
      ),
      dividerTheme: dividerTheme,
      elevatedButtonTheme: elevatedButtonTheme,
      iconTheme: iconTheme,
      listTileTheme: listTileTheme,
      navigationRailTheme:
          navigationRailTheme ?? _defaultNavigationRailThemeLight,
      primaryColorLight: primaryColor.lighten(),
      primaryColorDark: primaryColor.darken(),
      radioTheme: radioTheme,
      switchTheme: switchTheme,
      tabBarTheme: tabBarTheme ?? _defaultTabBarThemeLight,
      textTheme: textTheme ?? _defaultTextThemeLight,
    );
  }

  /// {@macro flutter_themez}
  ///
  /// Use this to get a [ThemeData.dark] theme.
  ThemeData dark() {
    return ThemeData.dark().copyWith(
      bottomAppBarTheme: bottomAppBarTheme,
      checkboxTheme: checkboxTheme,
      chipTheme: chipTheme,
      colorScheme: const ColorScheme.dark().copyWith(
        primary: primaryColor,
        secondary: secondaryColor,
        onSecondary: secondaryColor.blackOrWhite,
      ),
      dividerTheme: dividerTheme,
      elevatedButtonTheme: elevatedButtonTheme,
      navigationRailTheme:
          navigationRailTheme ?? _defaultNavigationRailThemeDark,
      radioTheme: radioTheme,
      switchTheme: switchTheme,
      tabBarTheme: tabBarTheme ?? _defaultTabBarThemeDark,
      textTheme: textTheme ?? _defaultTextThemeDark,
    );
  }

  /// AppBar theme.
  static AppBarTheme _defaultAppBarTheme(Color primaryColor) {
    return const AppBarTheme().copyWith(
      iconTheme: const IconThemeData().copyWith(
        color: primaryColor.blackOrWhite,
      ),
      foregroundColor: primaryColor.blackOrWhite,
    );
  }

  /// Bottom appBar theme.
  static BottomAppBarTheme _defaultBottomAppBarTheme(Color secondaryColor) {
    return const BottomAppBarTheme().copyWith(
      color: secondaryColor,
    );
  }

  /// Checkbox theme.
  static CheckboxThemeData _defaultCheckboxTheme(Color primaryColor) {
    return const CheckboxThemeData().copyWith(
      checkColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return primaryColor.blackOrWhite;
          }
          return null;
        },
      ),
      fillColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return primaryColor;
          }
          return null;
        },
      ),
    );
  }

  /// Chip theme.
  static ChipThemeData _defaultChipTheme(Color primaryColor) {
    return const ChipThemeData().copyWith(
      backgroundColor: primaryColor,
      labelStyle: const TextStyle().copyWith(
        color: primaryColor.blackOrWhite,
      ),
    );
  }

  /// Divider theme.
  static DividerThemeData _defaultDividerTheme() {
    return const DividerThemeData().copyWith(
      space: 2.0,
      thickness: 1.0,
    );
  }

  /// Elevated button theme.
  static ElevatedButtonThemeData _defaultElevatedButtonTheme(
    Color primaryColor,
    String fontFamily,
  ) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: primaryColor.blackOrWhite,
        shape: const RoundedRectangleBorder(),
        textStyle: const TextStyle().copyWith(
          color: primaryColor.blackOrWhite,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.25,
          fontFamily: fontFamily,
        ),
      ),
    );
  }

  /// Icon theme.
  static IconThemeData _defaultIconTheme(Color primaryColor) {
    return const IconThemeData().copyWith(
      color: primaryColor.blackOrWhite,
    );
  }

  /// List tile theme.
  static ListTileThemeData _defaultListTileTheme(Color secondaryColor) {
    return const ListTileThemeData().copyWith(
      selectedColor: secondaryColor.blackOrWhite,
      selectedTileColor: secondaryColor,
    );
  }

  /// Light Navigation rail theme.
  NavigationRailThemeData get _defaultNavigationRailThemeLight {
    return ThemeData.light().navigationRailTheme.copyWith(
          indicatorColor: primaryColor.withOpacity(0.25),
        );
  }

  /// Dark Navigation rail theme.
  /// This is meant to mimic the [BottomNavigationBar] style.
  NavigationRailThemeData get _defaultNavigationRailThemeDark {
    return ThemeData.dark().navigationRailTheme.copyWith(
          indicatorColor: secondaryColor.withOpacity(0.25),
          selectedLabelTextStyle: TextStyle(
            color: secondaryColor,
          ),
          selectedIconTheme: IconThemeData(
            color: secondaryColor,
          ),
        );
  }

  /// Radio theme.
  static RadioThemeData _defaultRadioTheme(Color primaryColor) {
    return const RadioThemeData().copyWith(
      fillColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return primaryColor;
          }
          return null;
        },
      ),
    );
  }

  /// Switch theme.
  static SwitchThemeData _defaultSwitchTheme(Color primaryColor) {
    return const SwitchThemeData().copyWith(
      trackColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return primaryColor.withOpacity(0.5);
          }
          return null;
        },
      ),
      thumbColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return primaryColor;
          }
          return null;
        },
      ),
    );
  }

  /// Light tab bar theme.
  TabBarTheme get _defaultTabBarThemeLight {
    return TabBarTheme(
      labelColor: primaryColor.blackOrWhite,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: primaryColor.blackOrWhite,
          width: 2.0,
        ),
      ),
    );
  }

  /// Dark tab bar theme.
  TabBarTheme get _defaultTabBarThemeDark {
    return TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: primaryColor,
          width: 2.0,
        ),
      ),
    );
  }

  /// Light text theme.
  TextTheme get _defaultTextThemeLight {
    return ThemeData.light().textTheme.apply(
          fontFamily: fontFamily,
        );
  }

  /// Dark text theme.
  TextTheme get _defaultTextThemeDark {
    return ThemeData.dark().textTheme.apply(
          fontFamily: fontFamily,
        );
  }
}
