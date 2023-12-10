import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:store_front/main.dart';
import 'package:store_front/ModelData/apiclass.dart';
import 'package:store_front/ModelData/api.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Store>> list;
  @override
  void initState() {
    // TODO: implement initState
    list = Api().getlist();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
            top: 50,
          ),
          child: Column(
            children: [
              // App Bar
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/cat.jpg"),
                  ),
                  SizedBox(width: 20),
                  Text("Hi, Pawan",style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 21, color: Colors.blueAccent
                  ),),
                  Spacer(),
                  Icon(Icons.search_rounded,color: Colors.deepOrange,size: 30),
                  SizedBox(width: 20),
                  Icon(Icons.shopping_cart_outlined,color: Colors.deepOrange,size: 30,),
                ],
              ),

              //top banner
              SizedBox(height: 50,),
              Container(
                decoration: BoxDecoration(borderRadius:
                BorderRadius.all(Radius.circular(15),
                ),
                 color: Color(0XFFA78FFF),

                 // gradient colors
                 gradient: LinearGradient(
                   colors: [ Colors.deepPurpleAccent, Color(0XFFA78FFF)],
                   end: Alignment.topLeft,
                   begin: Alignment.bottomRight,
                   stops: [ 0.1, 0.6],
                 )
                ),
                height: 120,

                // banner text
                child: Padding(
                  padding: const EdgeInsets.only(left: 25,top: 5),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Get',style: TextStyle(color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),),
                              SizedBox(width: 10,),
                              Text('20%',style: TextStyle(color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold))
                            ],
                          ),
                          Text('OFF YOUR FIRST',style: TextStyle(color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                          Text("PURCHASE",style: TextStyle(color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              //Catogry title
              Row(
                children: [
                  Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 30,
                  ),),

                ],
              ),
              //Catogry list.builder
              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                    itemBuilder: (context, index){
                    return Text( list[index].title))
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
