part of flutter_themez;

/// {@template flutter_themez}
/// The entry point for [FlutterThemez].
/// {@endtemplate}
class FlutterThemez {
  /// {@macro flutter_themez}
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
    required this.floatingActionButtonTheme,
    required this.iconTheme,
    required this.listTileTheme,
    required this.navigationRailTheme,
    required this.radioTheme,
    required this.snackBarTheme,
    required this.switchTheme,
    required this.tabBarTheme,
    required this.textTheme,
    required this.useMaterial3,
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
    FloatingActionButtonThemeData? floatingActionButtonTheme,
    IconThemeData? iconTheme,
    ListTileThemeData? listTileTheme,
    NavigationRailThemeData? navigationRailTheme,
    RadioThemeData? radioTheme,
    SnackBarThemeData? snackBarTheme,
    SwitchThemeData? switchTheme,
    TabBarThemeData? tabBarTheme,
    TextTheme? textTheme,
    bool? useMaterial3,
  }) {
    final Color _primaryColor = primaryColor ?? Colors.blue;
    final Color _secondaryColor = secondaryColor ?? Colors.orange;
    final String _fontFamily = fontFamily ?? 'Primary';

    return FlutterThemez._(
      primaryColor: _primaryColor,
      secondaryColor: _secondaryColor,
      fontFamily: _fontFamily,
      appBarTheme: appBarTheme,
      bottomAppBarTheme:
          bottomAppBarTheme ?? _defaultBottomAppBarTheme(_secondaryColor),
      checkboxTheme: checkboxTheme ?? _defaultCheckboxTheme(_primaryColor),
      chipTheme: chipTheme ?? _defaultChipTheme(_primaryColor),
      dividerTheme: dividerTheme ?? _defaultDividerTheme(),
      elevatedButtonTheme: elevatedButtonTheme ??
          _defaultElevatedButtonTheme(_primaryColor, _fontFamily),
      floatingActionButtonTheme: floatingActionButtonTheme,
      iconTheme: iconTheme ?? _defaultIconTheme(_primaryColor),
      listTileTheme: listTileTheme ?? _defaultListTileTheme(_secondaryColor),
      navigationRailTheme: navigationRailTheme,
      radioTheme: radioTheme ?? _defaultRadioTheme(_primaryColor),
      snackBarTheme: snackBarTheme ?? _defaultSnackBarTheme(_fontFamily),
      switchTheme: switchTheme ?? _defaultSwitchTheme(_primaryColor),
      tabBarTheme: tabBarTheme,
      textTheme: textTheme,
      useMaterial3: useMaterial3 ?? false,
    );
  }

  /// The primary color for this theme.
  final Color primaryColor;

  /// The secondary color for the theme.
  final Color secondaryColor;

  /// The font family for this theme.
  final String fontFamily;

  /// A theme for customizing [AppBar]s.
  final AppBarTheme? appBarTheme;

  /// A theme for customizing [BottomAppBar]s.
  final BottomAppBarTheme bottomAppBarTheme;

  /// A theme for customizing [Checkbox]s.
  final CheckboxThemeData checkboxTheme;

  /// A theme for customizing [Chip]s.
  final ChipThemeData chipTheme;

  /// A theme for customizing [Divider]s.
  final DividerThemeData dividerTheme;

  /// A theme for customizing [ElevatedButton]s.
  final ElevatedButtonThemeData elevatedButtonTheme;

  /// A theme for customizing [FloatingActionButton]s.
  final FloatingActionButtonThemeData? floatingActionButtonTheme;

  /// A theme for customizing [Icon]s.
  final IconThemeData iconTheme;

  /// A theme for customizing [ListTile]s.
  final ListTileThemeData listTileTheme;

  /// A theme for customizing [NavigationRail]s.
  final NavigationRailThemeData? navigationRailTheme;

  /// A theme for customizing [Radio]s.
  final RadioThemeData radioTheme;

  /// A theme for customizing [SnackBar]s.
  final SnackBarThemeData? snackBarTheme;

  /// A theme for customizing [Switch]s.
  final SwitchThemeData switchTheme;

  /// A theme for customizing [TabBar]s.
  final TabBarThemeData? tabBarTheme;

  /// A theme for customizing [Text]s.
  final TextTheme? textTheme;

  /// Whether to use Material Design 3
  final bool useMaterial3;

  /// {@macro flutter_themez}
  ///
  /// Use this to get a [ThemeData.light] theme.
  ThemeData light() {
    return ThemeData.light(useMaterial3: useMaterial3).copyWith(
      appBarTheme: appBarTheme ?? _defaultAppBarThemeLight(primaryColor),
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
      floatingActionButtonTheme: floatingActionButtonTheme,
      iconTheme: iconTheme,
      listTileTheme: listTileTheme,
      navigationRailTheme:
          navigationRailTheme ?? _defaultNavigationRailThemeLight,
      primaryColorLight: primaryColor.lighten(),
      primaryColorDark: primaryColor.darken(),
      radioTheme: radioTheme,
      snackBarTheme: _defaultSnackBarTheme(fontFamily),
      switchTheme: switchTheme,
      tabBarTheme: tabBarTheme ?? _defaultTabBarThemeLight,
      textTheme: textTheme ?? _defaultTextThemeLight,
    );
  }

  /// {@macro flutter_themez}
  ///
  /// Use this to get a [ThemeData.dark] theme.
  ThemeData dark() {
    return ThemeData.dark(useMaterial3: useMaterial3).copyWith(
      appBarTheme: appBarTheme ?? _defaultAppBarThemeDark(primaryColor),
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
      floatingActionButtonTheme: floatingActionButtonTheme,
      navigationRailTheme:
          navigationRailTheme ?? _defaultNavigationRailThemeDark,
      radioTheme: radioTheme,
      snackBarTheme: _defaultSnackBarTheme(fontFamily),
      switchTheme: switchTheme,
      tabBarTheme: tabBarTheme ?? _defaultTabBarThemeDark,
      textTheme: textTheme ?? _defaultTextThemeDark,
    );
  }

  /// AppBar light theme.
  static AppBarTheme _defaultAppBarThemeLight(Color primaryColor) {
    return const AppBarTheme().copyWith(
      iconTheme: const IconThemeData().copyWith(
        color: primaryColor.blackOrWhite,
      ),
      backgroundColor: primaryColor,
      foregroundColor: primaryColor.blackOrWhite,
      systemOverlayStyle: SystemUiOverlayStyle.light,
    );
  }

  /// AppBar dark theme.
  static AppBarTheme _defaultAppBarThemeDark(Color primaryColor) {
    return const AppBarTheme();
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
      checkColor: WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor.blackOrWhite;
          }
          return null;
        },
      ),
      fillColor: WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
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
          indicatorColor: primaryColor.withValues(alpha: 0.25),
        );
  }

  /// Dark Navigation rail theme.
  /// This is meant to mimic the [BottomNavigationBar] style.
  NavigationRailThemeData get _defaultNavigationRailThemeDark {
    return ThemeData.dark().navigationRailTheme.copyWith(
          indicatorColor: secondaryColor.withValues(alpha: 0.25),
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
      fillColor: WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor;
          }
          return null;
        },
      ),
    );
  }

  /// SnackBar theme.
  static SnackBarThemeData _defaultSnackBarTheme(String fontFamily) {
    return const SnackBarThemeData().copyWith(
      contentTextStyle: TextStyle(
        fontFamily: fontFamily,
      ),
    );
  }

  /// Switch theme.
  static SwitchThemeData _defaultSwitchTheme(Color primaryColor) {
    return const SwitchThemeData().copyWith(
      trackColor: WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor.withValues(alpha: 0.5);
          }
          return null;
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor;
          }
          return null;
        },
      ),
    );
  }

  /// Light tab bar theme.
  TabBarThemeData get _defaultTabBarThemeLight {
    return TabBarThemeData(
      labelColor: primaryColor.blackOrWhite,
      labelStyle: TextStyle(
        fontFamily: fontFamily,
      ),
      unselectedLabelStyle: TextStyle(
        fontFamily: fontFamily,
      ),
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: primaryColor.blackOrWhite,
          width: 2.0,
        ),
      ),
    );
  }

  /// Dark tab bar theme.
  TabBarThemeData get _defaultTabBarThemeDark {
    return TabBarThemeData(
      labelStyle: TextStyle(
        fontFamily: fontFamily,
      ),
      unselectedLabelStyle: TextStyle(
        fontFamily: fontFamily,
      ),
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
    return ThemeData.light().textTheme.copyWith().apply(
          fontFamily: fontFamily,
        );
  }

  /// Dark text theme.
  TextTheme get _defaultTextThemeDark {
    return ThemeData.dark().textTheme.copyWith().apply(
          fontFamily: fontFamily,
        );
  }
}
