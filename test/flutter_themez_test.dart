import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_themez/flutter_themez.dart';

void main() {
  test('constructor', () {
    const Color primaryColor = Color(0xFF000000);
    const Color secondaryColor = Color(0xFF999999);
    const String fontFamily = 'Font Family';

    final FlutterThemez theme = FlutterThemez(
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
      fontFamily: fontFamily,
    );

    expect(theme.primaryColor, primaryColor);
    expect(theme.secondaryColor, secondaryColor);
    expect(theme.fontFamily, fontFamily);
  });
}
