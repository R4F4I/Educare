import 'package:educare/config.dart';
import 'package:educare/major_pages/home.dart';
import 'package:educare/widgets/text_field.dart';
import 'package:educare/widgets/yellow_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset('images/signup_image.png', scale: 1.5,),
          ],
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              EducareTextField(label: 'Email'),
              SizedBox(height: 10,),
              EducareTextField(label: 'Phone Number'),
              SizedBox(height: 10,),
              EducareTextField(label: 'Password'),
            ],
          ),
        ),
        SizedBox(height: 20),
        YellowButton(
          width: MediaQuery.of(context).size.width-80,
          radius: 10,
          horzPadding: 20,
          vertPadding: 15,
          elevation: 0,
          text: 'Sign up',
          onPressed: ()=> Get.to(()=>()),
        ),
        SizedBox(height: 20),
        Text('already have an account?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 10,),
        SizedBox(
          width: 150,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 4,
              backgroundColor: Color(0xff383838),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11),
              ),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            ),
            onPressed: (){
              Get.to(()=>Home());
            }, 
            child: Text('log in', style: TextStyle(fontFamily: 'Gilroy', fontSize: 20, color: Colors.white),)
          ),
        ),
        Divider(
            color: const Color.fromARGB(255, 240, 148, 1),
          )
      ],),
    );
  }
}