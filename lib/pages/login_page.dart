// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

import '../utils/routes.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
String name= "";
bool changeButton = false;
// ignore: unused_field
final _formKey = GlobalKey<FormState>();

moveToHome(BuildContext context) async {
  
  if (_formKey.currentState!.validate()){
  setState(() {
                 
                 changeButton=true;   
                  },
                  );
            
                  await Future.delayed(const Duration(seconds: 1));
                  
                  // ignore: use_build_context_synchronously
                  await Navigator.pushNamed(context, MyRoutes.homeRoute);
                  setState(() {
                 
                 changeButton=false;   
                  },
                  );
  }


}



  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Form(
        child: Column(
          children: [
            Image.asset("assets/images/hey.png",
            fit:BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
           const SizedBox(
              height: 20.0,
            ),
      
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Column(children: [
                TextFormField(
                  
                decoration: const InputDecoration(
                  hintText: "Enter username",
                  labelText: "username",
                ),
                onChanged: (value){
                 name = value;
                  setState(() {
                    
                  },);
      
                },
              ),
            
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Enter password",
                  labelText: "Password",
                ),
                validator: (value){
                  if (value!.isEmpty){
                    return "username cannot be empty";
                  }

                 else {
                    if (value.length < 6){
                    return "password length should be at least 6";
                  }
                  }
                 return null;

                },
              ),
            
            const SizedBox(
              height: 20.0,
            ),
      
            Material(
              color: Colors.deepPurple,
              borderRadius:BorderRadius.circular(changeButton ? 50: 8),
               child: InkWell(
                // splashColor: Colors.red,
                onTap: ()=> moveToHome(context),
                //   setState(() {
                 
                //  changeButton=true;   
                //   },
                //   );
            
                //   await Future.delayed(const Duration(seconds: 1));
                  
                //   // ignore: use_build_context_synchronously
                //   await Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   setState(() {
                 
                //  changeButton=false;   
                //   },
                //   );
               
                
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width:changeButton?50: 150,
                  height: 50,
                  alignment: Alignment.center,
                  child: changeButton? 
                 const Icon(Icons.done,
                  color:Colors.white,
                  )
                  
                  
                  :const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
              
                    ),
                    // decoration: BoxDecoration(
                    //   color: Colors.deepPurple,
                      
                      // borderRadius:BorderRadius.circular(changeButton ? 50: 8)),
                    ),
              ),
            ),
              ]
              
        )
            )
      
           
      
      
      
      
      
      
      
      
           
            // ElevatedButton(
            //   child: const Text("login"),
            //   style: TextButton.styleFrom(minimumSize: const Size(50, 40)),
      
            // onPressed:  (){
            //   // print("hi");
            //   Navigator.pushNamed(context, MyRoutes.homeRoute);
            // },
            
              
            
      
         ]
        ),
      ),
    );
          
         

            
  }
}



      // child: Center
      // (
      //   child: Text("login page",
      //   style: TextStyle(
      //     fontSize: 22,
      //     color: Colors.blue,
      //     fontWeight: FontWeight.bold,
      //   ),
      //   ),
      // ),
    