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
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
              Colors.grey.shade900,
              Colors.grey.shade500,
              Colors.grey.shade400,
            ])
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 40),),
                    Text("Welcome",style: TextStyle(color: Colors.white,fontSize: 20),),
              ],),
              ),
              const SizedBox(height: 20,),
              Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)
                        )
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(children: [
                          const SizedBox(height: 60,),

                          //email, password
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 20,
                                  offset: Offset(0,10),
                                )
                              ]
                            ),
                            child: Column(children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    hintText: "Fullname",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    hintText: "Email",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    hintText: "Phone",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                  ),
                                ),
                              )
                            ],),
                          ),
                          const SizedBox(height: 40,),

                          // Login button
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 50),
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.green.shade800,
                            ),
                            child: const Center(
                              child:Text("Login", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30,),

                          // Login with SMS
                          const Text("Login with SMS",style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                          const SizedBox(height: 30,),

                          Row(children: [
                            //Facebook
                            Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: const Center(
                                      child: Text("Facebook",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),)
                                  ),
                                )
                            ),
                            const SizedBox(width: 30,),
                            //Google
                            Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: const Center(
                                      child: Text("Google",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),)
                                  ),
                                )
                            ),
                            const SizedBox(width: 30,),
                            Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: const Center(
                                      child: Text("Apple",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),)
                                  ),
                                )
                            )
                          ],)

                        ],
                        ),
                      ),
                    ),
                  ))

          ],),
        ),
      ),
    );
  }
}
