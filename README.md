# Flutter Theme

## Getting started

Add this to your `pubspec.yaml` under `dependences`

```yaml
flutter_theme:
  git: https://github.com/mj12358/flutter-theme
```

## Usage
```dart
import 'package:flutter_theme/flutter_theme.dart';
```

The `light()` and `dark()` methods provide a `ThemeData`

```dart
ThemeData td = FlutterTheme().light();
```

You can also provide your own primary and/or secondary colors.

```dart
ThemeData td = FlutterTheme(primaryColor: 0xFFEF4136, secondaryColor: 0xFFFBB040).dark();
```