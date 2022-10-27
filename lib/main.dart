import 'package:flutter/material.dart';
import 'package:scouts_app/signin.dart';
import 'package:scouts_app/signup.dart';
import 'package:scouts_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      //theme: lightTheme,
      //darkTheme: darkTheme,
      home: SignIn(),
    );
  }
}
