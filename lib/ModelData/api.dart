 import 'dart:convert';
import 'apiclass.dart';
import 'package:http/http.dart' as http;

class Api{
  static String endpoint = "https://api.escuelajs.co/api/v1/products";

  Future<List<Store>>  getlist() async{
   var response =  await http.get(Uri.parse(endpoint));
   
   if(response.statusCode == 200){
     var data = jsonDecode(response.body) as List;
     return data.map((store) => Store.fromJson(store)).toList();
   }else{
     throw Exception('Something happened');
   }
  }
}