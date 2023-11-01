import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_themez/flutter_themez.dart';

void main() {
  test('constructor', () {
    const Color primaryColor1 = Color(0xFF000000);
    const Color secondaryColor1 = Color(0xFF999999);
    const String fontFamily1 = 'Primary';

    final FlutterThemez theme = FlutterThemez(
      primaryColor: primaryColor1,
      secondaryColor: secondaryColor1,
      fontFamily: fontFamily1,
    );

    expect(theme.primaryColor, primaryColor1);
    expect(theme.secondaryColor, secondaryColor1);
    expect(theme.fontFamily, fontFamily1);

    const Color primaryColor2 = Color(0xFFFFFFFF);
    const Color secondaryColor2 = Color(0xFF000000);
    const String fontFamily2 = 'Secondary';

    final FlutterThemez theme2 = FlutterThemez(
      primaryColor: primaryColor2,
      secondaryColor: secondaryColor2,
      fontFamily: fontFamily2,
    );

    expect(theme2.primaryColor, primaryColor2);
    expect(theme2.secondaryColor, secondaryColor2);
    expect(theme2.fontFamily, fontFamily2);
  });
}
