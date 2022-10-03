import 'package:enjoyjakarta/theme_setup.dart';
import 'package:flutter/material.dart';

class SplashScreenWidget extends StatefulWidget {
  final String title;
  const SplashScreenWidget({Key? key, required this.title}) : super(key: key);

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
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
              padding: const EdgeInsetsDirectional.fromSTEB(30, 50, 30, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Explore Beauty of Journey in Jakarta.",
                    style: TextStyle(
                        color: themeSetup.white,
                        fontFamily: "Plus Jakarta",
                        fontWeight: FontWeight.w700,
                        fontSize: 40),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Everything you can imagine is here.",
                    style: TextStyle(
                        color: themeSetup.white,
                        fontFamily: "Plus Jakarta",
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward, color: themeSetup.white),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
