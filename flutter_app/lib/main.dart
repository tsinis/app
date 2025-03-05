import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: const ColoredBox(
      color: Colors.black,
      child: Center(child: FlutterLogo(size: 50)),
    ),
    theme: ThemeData(primarySwatch: Colors.grey),
  );
}
