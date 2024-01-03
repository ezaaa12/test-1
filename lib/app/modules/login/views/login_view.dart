import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack (
        children: [
          Container(
            width: Get.width,
            child: Image.asset("assets/img/bg-top-orange.png",
            fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 120,),
                Text("Lorem Impsum",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                SizedBox(height: 25,),
                TextField(
                  autocorrect: false,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    label: Text("Name"),
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: Text("Email"),
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  autocorrect: false,
                  decoration: InputDecoration(
                    label: Text("Password"),
                    border: OutlineInputBorder()
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: false, 
                          onChanged: (value) {
                            
                          },
                        
                        ),
                        Text("Remember")
                      ],
                    ),
                    SizedBox(width: 25,),
                    Text("Lorem Ipsum?"),
                  ],
                ),
                SizedBox(height: 25,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[900],
                    fixedSize: Size(120, 30)
                  ),
                  onPressed: ()=> Get.offNamed('/design-empat'), 
                  child: Text("Sign Up", style: TextStyle(color: Colors.white),
                  )
                ),
                SizedBox(height: 120,),
                Text("Lorem Ipsum sdadsa"),
                Text("Forget password", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple[900]),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
