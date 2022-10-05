import 'package:enjoyjakarta/splashscreen.dart';
import 'package:enjoyjakarta/theme_setup.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'responsive.dart';

class LoginScreen extends StatefulWidget {
  final String title;
  const LoginScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  bool rememberMe = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffefafa),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 7.h, 0, 0),
              child: Image.asset(
                'assets/images/mainlogo.png',
                width: 288,
                height: 100,
                fit: BoxFit.cover,
              ),
            ), // Main Logo
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(2.5.h, 7.h, 2.5.h, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                        color: themeSetup.mainTextColor,
                        fontFamily: "Plus Jakarta",
                        fontWeight: FontWeight.w500,
                        fontSize: res.autoFont(100.h, 2)),
                  )
                ],
              ),
            ), // Email Text Field Label
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(2.5.h, 2.h, 2.5.h, 0),
              child: TextFormField(
                style: TextStyle(
                  fontSize: res.autoFont(100.h, 1.5),
                ),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: "Ketik disini",
                  hintStyle: TextStyle(
                      color: themeSetup.secondaryTextColor,
                      fontFamily: "Plus Jakarta",
                      fontWeight: FontWeight.w100,
                      fontSize: res.autoFont(100.h, 1.5)),
                  filled: true,
                  fillColor: themeSetup.textFieldColor,
                ),
              ),
            ), // Email Text Field
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(2.5.h, 2.h, 2.5.h, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Kata Sandi",
                    style: TextStyle(
                        color: themeSetup.mainTextColor,
                        fontFamily: "Plus Jakarta",
                        fontWeight: FontWeight.w500,
                        fontSize: res.autoFont(100.h, 2)),
                  )
                ],
              ),
            ), // Password Text Field Label
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(2.5.h, 2.h, 2.5.h, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: "*********",
                  hintStyle: TextStyle(
                      color: themeSetup.secondaryTextColor,
                      fontFamily: "Plus Jakarta",
                      fontWeight: FontWeight.w100,
                      fontSize: res.autoFont(100.h, 1.5)),
                  filled: true,
                  fillColor: themeSetup.textFieldColor,
                ),
              ),
            ), // Password Text Field
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(2.5.h, 2.h, 2.5.h, 0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          onChanged: (value) {},
                          value: this.rememberMe,
                        ),
                        Text("Ingat saya",
                            style: TextStyle(
                                color: themeSetup.secondaryTextColor,
                                fontFamily: "Plus Jakarta",
                                fontWeight: FontWeight.w100,
                                fontSize: res.autoFont(100.h, 1.5)),
                            textAlign: TextAlign.left)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.error_outline,
                          size: 20,
                          color: themeSetup.alertColor,
                        ),
                        Text(
                          " Kata sandi/email anda salah",
                          style: TextStyle(
                              color: themeSetup.alertColor,
                              fontFamily: "Plus Jakarta",
                              fontWeight: FontWeight.w100,
                              fontSize: res.autoFont(100.h, 1.5)),
                        )
                      ],
                    )
                  ],
                )), // Alert
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(2.5.h, 2.h, 2.5.h, 0),
              child: Container(
                width: double.infinity,
                height: res.responsiver("h", 100.h, 5),
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SplashScreenWidget(
                                title: "Splash Screen")));
                    print("Button Pressed");
                    // var url = Uri.https('devgeosys.com', 'api/token', {
                    //   "email": "andi@gmail.com",
                    //   "password": r"Sup3rsecret$Passw0rd!",
                    //   "device_name": "coba"
                    // });
                    // var response = await http.post(url);
                    // print(url);
                    // print('Response status: ${response.statusCode}');
                    // print('Response body: ${response.body}');
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: themeSetup.white,
                        fontFamily: "Plus Jakarta",
                        fontWeight: FontWeight.w600,
                        fontSize: res.autoFont(100.h, 2)),
                  ),
                ),
              ),
            ), //Login Button
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(2.5.h, 2.h, 2.5.h, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Lupa password?",
                    style: TextStyle(
                        color: themeSetup.black,
                        fontFamily: "Plus Jakarta",
                        fontWeight: FontWeight.w400,
                        fontSize: res.autoFont(100.h, 1.5)),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(2.5.h, 2.h, 2.5.h, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Divider(
                          thickness: 1,
                          endIndent: 10,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'atau',
                        style: TextStyle(
                            color: themeSetup.mainTextColor,
                            fontFamily: "Plus Jakarta",
                            fontWeight: FontWeight.w400,
                            fontSize: res.autoFont(100.h, 1.5)),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Divider(
                          thickness: 1,
                          indent: 10,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ), // Atau Divider
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(2.5.h, 2.h, 2.5.h, 0),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Container(
                    width: double.infinity,
                    height: res.responsiver("h", 100.h, 5),
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: themeSetup.white),
                      onPressed: () {
                        print("Button Pressed");
                      },
                      child: Text(
                        "Login melalui Google",
                        style: TextStyle(
                            color: themeSetup.black,
                            fontFamily: "Plus Jakarta",
                            fontWeight: FontWeight.w600,
                            fontSize: res.autoFont(100.h, 1.5)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Container(
                      width: 30,
                      height: 30,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/google-logo.png',
                      ),
                    ),
                  ),
                ],
              ),
            ), // Google Login Divider
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(2.5.h, 2.h, 2.5.h, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tidak memiliki akun?",
                    style: TextStyle(
                        color: themeSetup.black,
                        fontFamily: "Plus Jakarta",
                        fontWeight: FontWeight.w200,
                        fontSize: res.autoFont(100.h, 1.5)),
                  ),
                  Text(
                    " Daftar Sekarang",
                    style: TextStyle(
                        color: themeSetup.blue,
                        fontFamily: "Plus Jakarta",
                        fontWeight: FontWeight.w200,
                        fontSize: res.autoFont(100.h, 1.5)),
                  )
                ],
              ),
            ), //Registrasi Path
          ],
        ),
      ),
    );
  }
}
