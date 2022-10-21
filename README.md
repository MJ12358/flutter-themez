# Flutter Theme

## Getting started

Add this to your `pubspec.yaml` under `dependences`

```
flutter_theme:
  git: https://github.com/mj12358/flutter-theme
```

## Usage
The `light()` and `dark()` methods provide a `ThemeData`

```
ThemeData td = FlutterTheme().light();
```

You can also provide your own primary and/or secondary colors.

```
ThemeData td = FlutterTheme(primaryColor: 0xFFEF4136, secondaryColor: 0xFFFBB040).dark();
```