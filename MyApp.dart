import 'package:flutter/material.dart';

void main(){
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
 String message = "Hello World";
 return MaterialApp(
 debugShowCheckedModeBanner: false,
 theme: ThemeData(
 primaryColor: Colors.teal,
 buttonColor: Colors.teal
 ),
 home: Scaffold(
 appBar: AppBar(
 title: Text ("Simple Button App"),
 ),
 body: Center(
 child: RaisedButton(
 shape:RoundedRectangleBorder(
 borderRadius: BorderRadius.circular(10.0)
 ),
 child: Text(message,
 style: TextStyle(
 color: Colors.white,
 ),),
 onPressed: (){
 message = "Button Clicked";
 },
 ),
 ),
 ),
 );
 }
}