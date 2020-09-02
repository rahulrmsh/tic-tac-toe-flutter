import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/utilities/constants.dart';

DateTime currentBackPressTime;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        SystemNavigator.pop();
        return Future.value(false);
      },
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: MaterialButton(
                      minWidth: 220.0,
                      height: 50,
                      shape: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3.5,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'solo');
                      },
                      child: Text(
                        "Solo Game",
                        style: GoogleFonts.bangers(
                            textStyle: TextStyle(
                          fontSize: 22,
                          color: mainTextColor,
                        )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    minWidth: 220.0,
                    height: 50,
                    shape: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3.5,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'multi');
                    },
                    child: Text(
                      "Multiplayer Game",
                      style: GoogleFonts.bangers(
                          textStyle: TextStyle(
                        fontSize: 22,
                        color: mainTextColor,
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    minWidth: 220.0,
                    height: 50,
                    shape: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3.5,
                      ),
                    ),
                    onPressed: () {
                      SystemNavigator.pop();
                      return Future.value(false);
                    },
                    child: Text(
                      "Exit",
                      style: GoogleFonts.bangers(
                          textStyle: TextStyle(
                        fontSize: 22,
                        color: mainTextColor,
                      )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<bool> onWillPop() {
  DateTime now = DateTime.now();
  if (currentBackPressTime == null ||
      now.difference(currentBackPressTime) > Duration(seconds: 2)) {
    currentBackPressTime = now;
    return Future.value(false);
  }
  return Future.value(true);
}
