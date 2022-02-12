import 'package:flutter/material.dart';
import 'package:my_apps/home_page.dart';
import 'package:my_apps/intro_page.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        IntroPage.id: (context) => const IntroPage(),
        HomePage.id: (context) => const HomePage(),
      },
    );
  }
}
