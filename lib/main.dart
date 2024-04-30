import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trevago/pages/home_page.dart';
import 'package:trevago/pages/welcome_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
