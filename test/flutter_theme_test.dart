import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_theme/flutter_theme.dart';

void main() {
  test('constructor', () {
    int primaryColor = 0xFF000000;
    int secondaryColor = 0xFF999999;

    FlutterTheme theme = FlutterTheme(
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
    );

    expect(primaryColor, theme.primaryColor);
    expect(secondaryColor, theme.secondaryColor);
  });
}
