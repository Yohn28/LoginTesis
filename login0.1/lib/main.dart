import 'package:flutter/material.dart';
import 'package:login/screen/loginscreen.dart';


void main(){

  runApp(MyApp());

} 

class MyApp extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return new MaterialApp(
      home: LoginPage(),
        theme: new ThemeData(
          primarySwatch: Colors.blue 
        )
    );
  }
}