# Flutter Theme

## Getting started

Add this to your `pubspec.yaml` under `dependences`

```yaml
flutter_themez: ^1.0.2
```

## Usage

```dart
import 'package:flutter_themez/flutter_themez.dart';
```

The `light()` and `dark()` methods provide a `ThemeData`

```dart
ThemeData td = FlutterThemez().light();
```

You can also provide your own primary and/or secondary colors.

```dart
ThemeData td = FlutterThemez(primaryColor: 0xFFEF4136, secondaryColor: 0xFFFBB040).dark();
```
