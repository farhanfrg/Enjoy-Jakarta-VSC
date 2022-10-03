import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'initial_splashscreen.dart';
import 'theme_setup.dart' as themeSetup;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Enjoy Jakarta',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      // A widget which will be started on application startup
      home: const LoginScreen(title: 'Enjoy Jakarta'),
    );
  }
}
