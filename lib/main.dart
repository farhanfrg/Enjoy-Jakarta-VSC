import 'package:enjoyjakarta/sign_guest.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'login_screen.dart';
import 'splashscreen.dart';
import 'sign_guest.dart';
import 'theme_setup.dart' as themeSetup;
import 'responsive.dart' as res;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          // Application name
          title: 'Enjoy Jakarta',
          // Application theme data, you can set the colors for the application as
          // you want
          theme: ThemeData(
            primarySwatch: Colors.orange,
          ),
          // A widget which will be started on application startup
          home: const SignGuest(title: 'Enjoy Jakarta'),
        );
      },
    );
  }
}
