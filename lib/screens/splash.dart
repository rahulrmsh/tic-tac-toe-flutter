import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/utilities/constants.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen();

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, 'home'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: mainBgColor),
            ),
            Container(
              color: mainBgColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 50),
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: mainBgColor,
                          backgroundImage: AssetImage('images/splash.png'),
                          radius: 100.0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Center(
                          child: Text(
                            "TIC TAC TOE",
                            style: GoogleFonts.bangers(
                                textStyle: TextStyle(
                              fontSize: 48,
                              color: mainTextColor,
                            )),
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Center(
                          child: Text(
                            "challenge accepted",
                            style: GoogleFonts.longCang(
                                textStyle: TextStyle(
                              fontSize: 30,
                              color: mainTextColor,
                            )),
                          ),
                        ),
                      )),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 50,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
