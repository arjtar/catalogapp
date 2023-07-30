import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    
    // ignore: prefer_const_declarations
    final imageUrl = "https://www.pexels.com/photo/shallow-focus-photography-of-yellow-star-lanterns-980859/";
    return Drawer(
      
          
        
          child: Container(
            color: Colors.deepPurple,
            child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  decoration: const BoxDecoration(color:Colors.amber),
                  accountName: const Text("Tarjan"),
                  accountEmail: const Text("arjtar@gmail.com"),
                  currentAccountPicture:CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
            
                  ),
                )
            
            
              ),
                 const ListTile(
                leading: Icon(
                CupertinoIcons.mail,
                color:Colors.white,
                ),
                title: Text(
                "Email Me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),  
                ),
            
              ),

             const ListTile(
                leading: Icon(
                CupertinoIcons.home,
                color:Colors.white,
                ),
                title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),  
                ),
            
              ),



               const ListTile(
                leading: Icon(
                CupertinoIcons.profile_circled,
                color:Colors.white,
                ),
                title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),  
                ),
            
              ),


            ],


            



            
            
                  ),
          ),
    
      );
   
  }
}