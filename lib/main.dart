import 'package:flutter/material.dart';
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
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('UI'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
            Text('User', style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 30),),
            Text(' Interface', style: TextStyle(color: Colors.green, fontSize: 30),),
          ],),
        ),
      ),
    );
  }
}
