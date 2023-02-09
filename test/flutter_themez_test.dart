import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_themez/flutter_themez.dart';

void main() {
  test('constructor', () {
    const int primaryColor = 0xFF000000;
    const int secondaryColor = 0xFF999999;

    final FlutterThemez theme = FlutterThemez(
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
    );

    expect(primaryColor, theme.primaryColor);
    expect(secondaryColor, theme.secondaryColor);
  });
}
