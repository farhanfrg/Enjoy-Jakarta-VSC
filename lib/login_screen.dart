import 'package:enjoyjakarta/splashscreen.dart';
import 'package:enjoyjakarta/theme_setup.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:http/http.dart' as http;

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
              child: Image.asset(
                'assets/images/mainlogo.png',
                width: 288,
                height: 100,
                fit: BoxFit.cover,
              ),
            ), // Main Logo
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                        color: themeSetup.mainTextColor,
                        fontFamily: "Plus Jakarta",
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp),
                  )
                ],
              ),
            ), // Email Text Field Label
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
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
                  hintText: "Ketik disini",
                  hintStyle: TextStyle(
                      color: themeSetup.secondaryTextColor,
                      fontFamily: "Plus Jakarta",
                      fontWeight: FontWeight.w100,
                      fontSize: 12.sp),
                  filled: true,
                  fillColor: themeSetup.textFieldColor,
                ),
              ),
            ), // Email Text Field
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Kata Sandi",
                    style: TextStyle(
                        color: themeSetup.mainTextColor,
                        fontFamily: "Plus Jakarta",
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp),
                  )
                ],
              ),
            ), // Password Text Field Label
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
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
                      fontSize: 12.sp),
                  filled: true,
                  fillColor: themeSetup.textFieldColor,
                ),
              ),
            ), // Password Text Field
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          onChanged: (bool? value) {
                            if (value != null) {
                              setState(() {
                                this.rememberMe = value;
                              });
                            }
                          },
                          value: this.rememberMe,
                        ),
                        Text("Ingat saya",
                            style: TextStyle(
                                color: themeSetup.secondaryTextColor,
                                fontFamily: "Plus Jakarta",
                                fontWeight: FontWeight.w100,
                                fontSize: 11.sp),
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
                              fontSize: 11.sp),
                        )
                      ],
                    )
                  ],
                )), // Alert
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
              child: Container(
                width: double.infinity,
                height: 45,
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
                        fontSize: 16.sp),
                  ),
                ),
              ),
            ), //Login Button
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Lupa password?",
                    style: TextStyle(
                        color: themeSetup.black,
                        fontFamily: "Plus Jakarta",
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
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
                            fontSize: 12.sp),
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
              padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Container(
                    width: double.infinity,
                    height: 45,
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
                            fontSize: 12.sp),
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
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tidak memiliki akun?",
                    style: TextStyle(
                        color: themeSetup.black,
                        fontFamily: "Plus Jakarta",
                        fontWeight: FontWeight.w200,
                        fontSize: 12.sp),
                  ),
                  Text(
                    " Daftar Sekarang",
                    style: TextStyle(
                        color: themeSetup.blue,
                        fontFamily: "Plus Jakarta",
                        fontWeight: FontWeight.w200,
                        fontSize: 12.sp),
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
