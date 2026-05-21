part of '../flutter_themez.dart';

/// {@template flutter_themez}
/// The entry point for [FlutterThemez].
/// {@endtemplate}
class FlutterThemez {
  /// {@macro flutter_themez}
  FlutterThemez({
    this.primaryColor = Colors.blue,
    this.secondaryColor = Colors.orange,
    this.fontFamily = 'Primary',
    this.appBarTheme,
    BottomAppBarThemeData? bottomAppBarTheme,
    CheckboxThemeData? checkboxTheme,
    ChipThemeData? chipTheme,
    DividerThemeData? dividerTheme,
    ElevatedButtonThemeData? elevatedButtonTheme,
    this.floatingActionButtonTheme,
    IconThemeData? iconTheme,
    ListTileThemeData? listTileTheme,
    this.navigationRailTheme,
    RadioThemeData? radioTheme,
    this.snackBarTheme,
    SwitchThemeData? switchTheme,
    this.tabBarTheme,
    this.textTheme,
    this.useMaterial3 = false,
  })  : bottomAppBarTheme =
            bottomAppBarTheme ?? _defaultBottomAppBarTheme(secondaryColor),
        checkboxTheme = checkboxTheme ?? _defaultCheckboxTheme(primaryColor),
        chipTheme = chipTheme ?? _defaultChipTheme(primaryColor),
        dividerTheme = dividerTheme ?? _defaultDividerTheme(),
        elevatedButtonTheme = elevatedButtonTheme ??
            _defaultElevatedButtonTheme(primaryColor, fontFamily),
        iconTheme = iconTheme ?? _defaultIconTheme(primaryColor),
        listTileTheme = listTileTheme ?? _defaultListTileTheme(secondaryColor),
        radioTheme = radioTheme ?? _defaultRadioTheme(primaryColor),
        switchTheme = switchTheme ?? _defaultSwitchTheme(primaryColor);

  /// The primary color for this theme.
  final Color primaryColor;

  /// The secondary color for the theme.
  final Color secondaryColor;

  /// The font family for this theme.
  final String fontFamily;

  /// A theme for customizing [AppBar]s.
  final AppBarTheme? appBarTheme;

  /// A theme for customizing [BottomAppBar]s.
  final BottomAppBarThemeData bottomAppBarTheme;

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
      snackBarTheme: snackBarTheme ?? _defaultSnackBarThemeLight,
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
      snackBarTheme: snackBarTheme ?? _defaultSnackBarThemeDark,
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
  static BottomAppBarThemeData _defaultBottomAppBarTheme(Color secondaryColor) {
    return const BottomAppBarThemeData().copyWith(
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

  /// Light SnackBar theme.
  SnackBarThemeData get _defaultSnackBarThemeLight {
    return ThemeData.light().snackBarTheme.copyWith(
          contentTextStyle: TextStyle(
            fontFamily: fontFamily,
          ),
        );
  }

  /// Dark SnackBar theme.
  SnackBarThemeData get _defaultSnackBarThemeDark {
    return ThemeData.dark().snackBarTheme.copyWith(
          contentTextStyle: TextStyle(
            fontFamily: fontFamily,
            color: Colors.black,
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

  /// Light TabBar theme.
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

  /// Dark TabBar theme.
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

  /// Light Text theme.
  TextTheme get _defaultTextThemeLight {
    return ThemeData.light().textTheme.copyWith().apply(
          fontFamily: fontFamily,
        );
  }

  /// Dark Text theme.
  TextTheme get _defaultTextThemeDark {
    return ThemeData.dark().textTheme.copyWith().apply(
          fontFamily: fontFamily,
        );
  }
}
