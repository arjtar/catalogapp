// ignore_for_file: unused_import



import 'package:catalogapp/home_page.dart';
import 'package:catalogapp/pages/login_page.dart';
import 'package:catalogapp/widget/themes.dart';
import 'package:flutter/material.dart';


import 'utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode:ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      // theme: ThemeData(
      //   primarySwatch: Colors.deepPurple,
      //   fontFamily: GoogleFonts.lato().fontFamily,
      //   appBarTheme: AppBarTheme(
      //   color:Colors.white,
      //   elevation:0.0,
      //   iconTheme: const IconThemeData(color: Colors.black),
      //   textTheme: Theme.of(context).textTheme, 
      //   ),
        // primaryTextTheme:GoogleFonts.latoTextTheme()
        
       
          
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoutes.homeRoute,
        routes: {
          "/":(context) => const LoginPage(),
          MyRoutes.homeRoute:(context) => const HomePage(),
          MyRoutes.loginRoute:(context) => const LoginPage(),

        },
         );
      }
    }