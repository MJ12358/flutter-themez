import 'package:flutter/material.dart';
import 'package:flutter_themez/flutter_themez.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FlutterThemez theme = FlutterThemez(
      primaryColor: 0xFF000000,
      secondaryColor: 0xFF999999,
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
