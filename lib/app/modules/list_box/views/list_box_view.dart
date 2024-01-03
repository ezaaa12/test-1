import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/list_box_controller.dart';

class ListBoxView extends GetView<ListBoxController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack (
            children: [
              Container(
                width: Get.width,
                child: Image.asset("assets/img/bg-top.png",
                fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 100,),
                    Text("Lorem Impsum",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    GridView.count(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      children: [
                          Card(
                            title: "Mobile Apps",
                            date: "December 20.2020",
                            bgcolor: Colors.white,
                            icon: Icon(Icons.more_vert, color: Color(0xFF415EB6),),
                            // image: Image.asset("assets/icons/folder_blue.png"),
                            subtittle: "test",
                            textcolor: Color(0xFF415EB6),
                          ),
                          Card(
                            title: "SVG Icons",
                            date: "December 14.2020",
                            bgcolor: Color(0xFFFFFBEC),
                            icon: Icon(Icons.more_vert, color: Color(0xFFFFB110),),
                            subtittle: "test",
                            // image: Image.asset("assets/icons/folder_yellow.png"),
                            textcolor: Color(0xFFFFB110),
                          ),
                          Card(
                            title: "SVG Icons",
                            date: "December 14.2020",
                            bgcolor: Color(0xFFFFFBEC),
                            icon: Icon(Icons.more_vert, color: Color(0xFFFFB110),),
                            subtittle: "test",
                            // image: Image.asset("assets/icons/folder_yellow.png"),
                            textcolor: Color(0xFFFFB110),
                          ),
                          Card(
                            title: "SVG Icons",
                            date: "December 14.2020",
                            bgcolor: Color(0xFFFFFBEC),
                            icon: Icon(Icons.more_vert, color: Color(0xFFFFB110),),
                            subtittle: "test",
                            // image: Image.asset("assets/icons/folder_yellow.png"),
                            textcolor: Color(0xFFFFB110),
                          ),
                          Card(
                            title: "SVG Icons",
                            date: "December 14.2020",
                            bgcolor: Color(0xFFFFFBEC),
                            icon: Icon(Icons.more_vert, color: Color(0xFFFFB110),),
                            subtittle: "test",
                            // image: Image.asset("assets/icons/folder_yellow.png"),
                            textcolor: Color(0xFFFFB110),
                          ),
                          Card(
                            title: "SVG Icons",
                            date: "December 14.2020",
                            bgcolor: Color(0xFFFFFBEC),
                            icon: Icon(Icons.more_vert, color: Color(0xFFFFB110),),
                            subtittle: "test",
                            // image: Image.asset("assets/icons/folder_yellow.png"),
                            textcolor: Color(0xFFFFB110),
                          ),
                          Card(
                            title: "SVG Icons",
                            date: "December 14.2020",
                            bgcolor: Color(0xFFFFFBEC),
                            icon: Icon(Icons.more_vert, color: Color(0xFFFFB110),),
                            subtittle: "test",
                            // image: Image.asset("assets/icons/folder_yellow.png"),
                            textcolor: Color(0xFFFFB110),
                          ),
                          Card(
                            title: "SVG Icons",
                            date: "December 14.2020",
                            bgcolor: Color(0xFFFFFBEC),
                            icon: Icon(Icons.more_vert, color: Color(0xFFFFB110),),
                            subtittle: "test",
                            // image: Image.asset("assets/icons/folder_yellow.png"),
                            textcolor: Color(0xFFFFB110),
                          ),
                        ], 
                      ),
                  ],
                ),
              )
            ],
          ),
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

class Card extends StatelessWidget {

  Card({

  Key?key,
  required this.title,
  required this.subtittle,
  required this.date,
  required this.bgcolor,
  required this.icon,
  required this.textcolor,

    
  }) : super(key: key);

  final String title;
  final String subtittle;
  final String date;
  final Color bgcolor;
  final Color textcolor;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      margin: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.amber),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              Text(subtittle, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12)),
              SizedBox(height: 10,),
            ],
          ),
           
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.purple[400],
                borderRadius: BorderRadius.circular(40/2)
              ),
              child: Center(
                child: Text("PRO", style: TextStyle(color: Colors.white),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
