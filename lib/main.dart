import 'package:flutter/material.dart';
import './Menu.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

       return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(  
          backgroundColor: Colors.blue,
          title: Text("Food Menu"), 
        )
       ,
        body: Menu(),
      ),
       );
  }
}
