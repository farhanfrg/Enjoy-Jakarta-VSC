import 'package:enjoyjakarta/login_screen.dart';
import 'package:enjoyjakarta/main.dart';
import 'package:enjoyjakarta/splashscreen.dart';
import 'package:enjoyjakarta/theme_setup.dart';
import 'package:flutter/material.dart';

class SignGuest extends StatefulWidget {
  final String title;
  const SignGuest({Key? key, required this.title}) : super(key: key);

  @override
  State<SignGuest> createState() => _SignGuestState();
}

class _SignGuestState extends State<SignGuest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(children: [
              Image.asset(
                'assets/images/initialSplash1.png',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
              )
            ]),
            Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  elevation: 10,
                  child: SizedBox(
                    height: 231,
                    width: 343,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Welcome",
                            style: TextStyle(
                                color: themeSetup.black,
                                fontFamily: "Plus Jakarta",
                                fontWeight: FontWeight.w700,
                                fontSize: 24),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Explore Jakarta with us.",
                            style: TextStyle(
                                color: themeSetup.black,
                                fontFamily: "Plus Jakarta",
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            height: 45,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: themeSetup.accentColor),
                              onPressed: () {
                                print("Button Pressed");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const LoginScreen(
                                            title: "Login Screen")));
                              },
                              child: const Text(
                                "Sign in",
                                style: TextStyle(
                                    color: themeSetup.white,
                                    fontFamily: "Plus Jakarta",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            height: 45,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: themeSetup.white),
                              onPressed: () {
                                print("Button Pressed");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SplashScreenWidget(
                                                title: "Splash Screen")));
                              },
                              child: const Text(
                                "Login as guest",
                                style: TextStyle(
                                    color: themeSetup.black,
                                    fontFamily: "Plus Jakarta",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
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
}
