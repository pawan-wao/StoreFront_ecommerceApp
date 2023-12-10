import 'package:flutter/material.dart';
import 'package:store_front/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:store_front/ModelData/apiclass.dart';
import 'package:store_front/ModelData/api.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: Scaffold(
          body: HomePage(),
      ),
    );
  }
}