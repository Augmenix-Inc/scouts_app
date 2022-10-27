import 'package:flutter/material.dart';
import 'package:scouts_app/home.dart';
import 'package:scouts_app/signin.dart';
import 'package:scouts_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const SignIn(),
    );
  }
}
