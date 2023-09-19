import 'package:flutter/material.dart';
import 'package:flutter_themez/flutter_themez.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final FlutterThemez theme = FlutterThemez(
      primaryColor: const Color(0xFF000000),
      secondaryColor: const Color(0xFF999999),
    );

    return MaterialApp(
      home: const Scaffold(
        body: Center(
          child: Text('Flutter Themez!'),
        ),
      ),
      darkTheme: theme.dark(),
      theme: theme.light(),
    );
  }
}
