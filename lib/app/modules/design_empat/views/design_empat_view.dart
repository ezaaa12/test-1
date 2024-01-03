import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/design_empat_controller.dart';

class DesignEmpatView extends GetView<DesignEmpatController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView (
        children: [
          Stack(
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
                    SizedBox(height: 100,),
                    Text("Lorem Impsum",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),),
                    SizedBox(height: 30,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple[900]
                          ),
                          onPressed: ()=>Get.offNamed('/list-box'), 
                          child: Text("Lorem lorem", style: TextStyle(color: Colors.white),)),
                        SizedBox(height: 15,),
                        Text("Lorem impsummmm sbdadadsa", style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("Lorem impsummmm sbdadadsa", style: TextStyle(fontWeight: FontWeight.w400),),
                        SizedBox(height: 15,),
                        CardTile(),
                        CardTile(),
                        CardTile(),
                        CardTile(),
                        CardTile(),
                        CardTile(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
       bottomNavigationBar:
       BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
        selectedItemColor: Colors.white,
        onTap: (value) {
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey[400],),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.grey[400]),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded, color: Colors.grey[400]),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share_rounded, color: Colors.grey[400]),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz, color: Colors.grey[400]),
            label: ""
          ),
        ],
      )
    );
  }
}

class CardTile extends StatelessWidget {
  const CardTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 1, color: Colors.amber)
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        title: Text("Ipsum", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
        subtitle: Text("24 Courses", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
        trailing: Icon(Icons.ac_unit_sharp, size: 35,),
      ),
    );
  }
}
