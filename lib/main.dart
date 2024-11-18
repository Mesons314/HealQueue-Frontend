import 'package:flutter/material.dart';
import 'package:healfast01/DoctorsRegisterationPage.dart';
import 'package:healfast01/UserRegisteration.dart';

import 'package:healfast01/BottomNav/BottomNavigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Heal Fast',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.lightBlueAccent,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Heal Fast'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: Container(
                margin: EdgeInsets.all(11),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6,
                      )
                    ]
                ),
                child: const Center(
                  child: Text(
                    'Welcome\nto\nHeal Fast',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color:Colors.red,),
                  ),
                ),
              ),
            ),

            SizedBox(
              width: 225,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UserRegisteration()));
                },style: ElevatedButton.styleFrom(
                    elevation: 10,
                    shadowColor: Colors.black
                ),child: const Text('Register As User', style: TextStyle(fontSize: 18),),),
              ),
            ),

            SizedBox(
              width: 225,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorsRegisterationPage()));
                },style: ElevatedButton.styleFrom(
                    elevation: 10,
                    shadowColor: Colors.black
                ), child: const Text('Register As Doctor', style: TextStyle(fontSize: 18),),),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> BottomNavigation()));
              },
              child: Text("All Ready A User",
                selectionColor: Colors.blue,
                style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
