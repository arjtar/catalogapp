import 'package:catalogapp/models/catalog.dart';
import 'package:flutter/material.dart';


class ItemWidget extends StatelessWidget {
final Item item;

  const ItemWidget({super.key,  keykey, required this.item})
  // ignore: unnecessary_null_comparison
  : assert(item != null );
  // super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap:(){
          // ignore: avoid_print
          print("${item.name} pressed");


        },
        leading:Image.network(item.image),
        title:Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
        textScaleFactor: 1.5,
        style: const TextStyle(
          color:Colors.deepPurple,
          fontWeight: FontWeight.bold,
    
        ),
        ),
    
      ),
    );
  }
}