import 'package:flutter/material.dart';
import 'package:photo_redesign/screens/myhomepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(  
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        accentColor: Colors.black
      ),
      home: MyHomePage(), //Teste
    );
  }
}