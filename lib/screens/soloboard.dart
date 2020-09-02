import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/utilities/constants.dart';

class SoloBoard extends StatefulWidget {
  @override
  _SoloBoardState createState() => _SoloBoardState();
}

class _SoloBoardState extends State<SoloBoard> {
  String getSymbolForIdx(int idx) {
    return 'x';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainBgColor,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'X',
                        style: GoogleFonts.permanentMarker(
                          color: mainTextColor,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        'Player 1',
                        style: GoogleFonts.bangers(
                          color: mainTextColor,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Result',
                        style: GoogleFonts.bangers(
                          color: mainTextColor,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        'X Wins',
                        style: GoogleFonts.bangers(
                          color: mainTextColor,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'O',
                        style: GoogleFonts.permanentMarker(
                          color: mainTextColor,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        'Player 2',
                        style: GoogleFonts.bangers(
                          color: mainTextColor,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(
                  9,
                  (idx) {
                    return Field(
                        idx: idx,
                        onTap: null,
                        playerSymbol: getSymbolForIdx(idx));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Field extends StatelessWidget {
  Field({this.idx, this.onTap, this.playerSymbol});
  final idx;
  final onTap;
  final playerSymbol;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
