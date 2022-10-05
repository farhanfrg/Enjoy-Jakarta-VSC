import 'package:enjoyjakarta/login_screen.dart';
import 'package:enjoyjakarta/main.dart';
import 'package:enjoyjakarta/splashscreen.dart';
import 'package:enjoyjakarta/theme_setup.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'responsive.dart';

class SignGuest extends StatefulWidget {
  final String title;
  const SignGuest({Key? key, required this.title}) : super(key: key);

  @override
  State<SignGuest> createState() => _SignGuestState();
}

class _SignGuestState extends State<SignGuest> {
  var cardHeight = 27.h;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              'assets/images/initialSplash1.png',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
            ),
            Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  elevation: 10,
                  child: SizedBox(
                    height: cardHeight,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "Welcome",
                            style: TextStyle(
                              color: themeSetup.black,
                              fontFamily: "Plus Jakarta",
                              fontWeight: FontWeight.w700,
                              fontSize: res.autoFont(cardHeight, 11),
                            ),
                          ),
                          Text(
                            "Explore Jakarta with us.",
                            style: TextStyle(
                                color: themeSetup.black,
                                fontFamily: "Plus Jakarta",
                                fontWeight: FontWeight.w500,
                                fontSize: res.autoFont(cardHeight, 9)),
                          ),
                          SizedBox(
                            height: res.responsiver("h", cardHeight, 3),
                          ),
                          Container(
                            width: double.infinity,
                            height: res.responsiver("h", cardHeight, 22),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: themeSetup.accentColor),
                              onPressed: () {
                                print("Button Pressed");
                                Navigator.push(context, routeToLoginScreen());
                              },
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    color: themeSetup.white,
                                    fontFamily: "Plus Jakarta",
                                    fontWeight: FontWeight.bold,
                                    fontSize: res.autoFont(cardHeight, 6)),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: res.responsiver("h", cardHeight, 22),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: themeSetup.white),
                              onPressed: () {
                                print("Button Pressed");
                                Navigator.push(context, routeAsGuest());
                              },
                              child: Text(
                                "Login as guest",
                                style: TextStyle(
                                    color: themeSetup.black,
                                    fontFamily: "Plus Jakarta",
                                    fontWeight: FontWeight.bold,
                                    fontSize: res.autoFont(cardHeight, 6)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  MaterialPageRoute<dynamic> routeAsGuest() => MaterialPageRoute(
      builder: (context) => const SplashScreenWidget(title: "Splash Screen"));

  MaterialPageRoute<dynamic> routeToLoginScreen() => MaterialPageRoute(
      builder: (context) => const LoginScreen(title: "Login Screen"));
}
