// ignore_for_file: unused_local_variable

import 'package:catalogapp/models/catalog.dart';
import 'package:catalogapp/widget/drawer.dart';
import 'package:catalogapp/widget/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  void initState(){
    super.initState();
    loadData();
  }
    loadData() async{
     final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
     final decodeData = jsonDecode(catalogJson);
     var productsData = decodeData["products"];
     CatalogModel.items = List.from(productsData)
     .map<Item>((item) => Item.fromMap(item)).toList();
     setState(() {
       
     });
     
     
    
    }
  
  @override
  // dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
  // }
  Widget build (BuildContext context) {
    // final dummyList = List.generate(10, (index)=> CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
        ),
        // body: Padding(
        //   padding: const EdgeInsets.all(16,0),
        //   child: ListView.builder(itemBuilder: ,)
        
        // body: ListView.builder(

          body: Padding(
            padding: const EdgeInsets.all(16,),
            child:ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
        return ItemWidget(
        item: CatalogModel.items[index],       
        );
        },
            ), 
        ),
        drawer: const MyDrawer(),
        );
  }
      
}

