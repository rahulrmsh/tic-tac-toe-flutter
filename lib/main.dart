import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tic_tac_toe/screens/home.dart';
import 'package:tic_tac_toe/screens/multiboard.dart';
import 'package:tic_tac_toe/screens/soloboard.dart';
import 'package:tic_tac_toe/screens/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MainApp());
  });
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      routes: {
        'splash': (context) => SplashScreen(),
        'home': (context) => HomeScreen(),
        'solo': (context) => SoloBoard(),
        'multi': (context) => MultiBoard(),
      },
    );
  }
}
