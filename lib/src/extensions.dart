part of flutter_themez;

extension _ColorExtension on Color {
  Brightness get brightness {
    return ThemeData.estimateBrightnessForColor(this);
  }

  Color get blackOrWhite {
    return brightness == Brightness.dark ? Colors.white : Colors.black;
  }

  Color darken([double amount = 0.1]) {
    final HSLColor hsl = HSLColor.fromColor(this);
    final HSLColor hslDark =
        hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
    return hslDark.toColor();
  }

  Color lighten([double amount = 0.1]) {
    final HSLColor hsl = HSLColor.fromColor(this);
    final HSLColor hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));
    return hslLight.toColor();
  }
}
