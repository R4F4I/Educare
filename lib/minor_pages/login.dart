import 'package:educare/config.dart';
// import 'package:educare/splash_screen.dart';
import 'package:educare/widgets/logo.dart';
import 'package:educare/widgets/text_field.dart';
import 'package:educare/widgets/yellow_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    EducareLogo(size: 55,),
                  ],
                ),
                Text('Welcome Back', style: TextStyle(fontFamily: 'Gilroy', fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 10,),
                Column(
                  children: [
                    EducareTextField(label: 'Email'),
                    SizedBox(height: 10,),
                    EducareTextField(label: 'Password'),
                    /* TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xffC4D7FF),
                          )
                        ),
                        filled: true,
                        fillColor: Colors.white,
                            
                        label: Text('Password', style: TextStyle(fontFamily: 'Poppins', color: Color.fromARGB(125, 0, 0, 77))),
                      ),
                    ), */
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: SizedBox(
                                width: 15,
                                height: 15,
                                child: Transform.scale(
                                  scale: 0.8,
                                  child: Checkbox(
                                    value: true, 
                                    onChanged: (value){value= !value!;print(value);},
                                    activeColor: educareYellow, 
                                    checkColor: Colors.white,
                                    side: BorderSide(color: educareYellow),
                                    
                                  ),
                                ),
                              ),
                            ),
                            Text('Remember me?', style: TextStyle(color: Color.fromARGB(125, 0, 0, 77), fontSize: 14,))
                          ],
                        ),
                        Spacer(),
                        Text('Forgot Password?', style: TextStyle(color: Color.fromARGB(125, 0, 0, 77), fontSize: 14)),
                      ],
                    ),
                    SizedBox(height: 10,),
                    YellowButton(
                      width: MediaQuery.of(context).size.width-80,
                      radius: 10,
                      horzPadding: 20,
                      vertPadding: 15,
                      elevation: 0,
                      text: 'Continue',
                      onPressed: ()=> Get.to(()=>()),
                    ),
                    SizedBox(height: 20,),
                    Text('Don\'t have an account?', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
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
                          Get.to(()=>Signup());
                        }, 
                        child: Text('sign up', style: TextStyle(fontFamily: 'Gilroy', fontSize: 20, color: Colors.white),)
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: const Color.fromARGB(255, 240, 148, 1),
          )
        ],
      ),
    );
  }
}
