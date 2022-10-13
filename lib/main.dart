import 'package:exemplo_flutter_2022_02/buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo Flutter bugWare 2022/02',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFF3E194D),
          onPrimary: Colors.white,
          secondary: Color(0xFFA7FBD3),
          onSecondary: Colors.black,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.white,
          onBackground: Colors.black,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
        textTheme: TextTheme(
          button: TextStyle(fontSize: 20.0),
        )
      ),
      home: const Buttons(),
    );
  }
}