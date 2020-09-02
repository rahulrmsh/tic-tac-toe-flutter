import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/utilities/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                    onPressed: null,
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
                  onPressed: null,
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
                  onPressed: null,
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
    );
  }
}
