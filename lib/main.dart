import 'package:flutter/cupertino.dart';
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

  final List<String> list = [
    'assets/images/dew.png',
    'assets/images/dew2.jpg',
    'assets/images/dew3.jpg',
    'assets/images/deweloper1.jpg',
    'assets/images/deweloper2.jpg',
    'assets/images/notebook1.jpg',
    'assets/images/notebook2.jpg',
    'assets/images/notebook3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          title: const Text('Shopping'),
          leading: const Icon(Icons.menu),
          actions: [
            Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 30,
                  width: 36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellow.shade800
                  ),
                  child: Center(child: Text(list.length.toString()),),

                ),)
          ],
        ),
        body: Container(
          color: Colors.deepOrange,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                height: 240,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/deweloper1.jpg')
                  )
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight, 
                      colors: [
                        Colors.black.withOpacity(.3),
                        Colors.black.withOpacity(.3)
                      ],
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text('Programming', style: TextStyle(fontSize: 35, color: Colors.white),),
                      const SizedBox(height: 20,),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Center(child: Text('Buy')),
                      ),
                      const SizedBox(height: 20,)

                    ],
                  ),
                ),
              ),
              //body
              Expanded(
                  child: GridView.count(
                    crossAxisCount: 1,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: list.map((item) => callOfList(item)).toList(),
                  )
              )
            ],
          ),
        ),
        
      ),
    );
  }
  Widget callOfList(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(item)
            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(Icons.favorite_outlined, color: Colors.red, size: 35,)
          ],
        ),
      ),
    );
  }
}
