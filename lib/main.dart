import 'package:app3/Screen/HomeScreen.dart';
import 'package:app3/Screen/Sing_In.dart';
import 'package:app3/Screen//Splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Quicksand'),
      initialRoute: "/",
      routes: {
        "/splash-screen": (context) => SplashScreen(),
        "/singIn-screen": (context) => SingIn(),
        "/singUp-screen": (context) => SingIn(),
      },
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
