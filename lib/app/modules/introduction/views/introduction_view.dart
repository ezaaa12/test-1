import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
        decoration: PageDecoration(
          boxDecoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/img/bg-screen.png", ), fit: BoxFit.cover),
          ),
          footerFit: FlexFit.tight
          // pageColor: Colors.black
        ),
        titleWidget: Text(""),
        bodyWidget: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", style: TextStyle(color: Colors.white, fontSize: 14),),
                  SizedBox(height: 25,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(130, 45)
                    ),
                    onPressed: () => Get.offNamed("/login"), 
                    child: Text("START", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),))
                ],
              ),
            ),
          ],
        ),
        image:  Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("EDUCATION", style:TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),),
              // SizedBox(height: 30,),
              Stack(
                children: [
                  Container(
                  margin: EdgeInsets.only(top: 60),
                  width: 90,
                  height: 90,
                  // color: Colors.amber,
                  child: Image.asset("assets/icon/book.png",fit: BoxFit.cover,),
                  ),
                ],
              )
            ],
          ),
        )
        ),
      ],
      showNextButton: true,
      done: const Text(""),
      next: Text("Next >>>"),
      onDone: () {
        // On button pressed
        
      },
    );
  }
}
