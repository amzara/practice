import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:practice/screen/counter_page.dart";
import "package:practice/screen/homepage.dart";


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  MyApp({super.key});

List names = ["Mitch", "Sharon", "Vince"];
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage()
      );
    
  }
}
