import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_themez/flutter_themez.dart';

void main() {
  test('constructor', () {
    const int primaryColor = 0xFF000000;
    const int secondaryColor = 0xFF999999;
    const String fontFamily = 'Font Family';

    final FlutterThemez theme = FlutterThemez(
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
      fontFamily: fontFamily,
    );

    expect(theme.primaryColor.value, primaryColor);
    expect(theme.secondaryColor.value, secondaryColor);
    expect(theme.fontFamily, fontFamily);
  });
}
