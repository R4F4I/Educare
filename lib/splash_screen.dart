import 'package:educare/config.dart';
import 'package:educare/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'minor_pages/login.dart';
import 'widgets/yellow_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EducareLogo(size: 75),
              ],
            ),
            ClipRect(

              child: Image.asset(
                'images/splash_screen.png',
                scale: 1.7,
              ),
            ),
            // Image.asset('images/tree.png'),
            Column(
              children: [
                Text('GROW TOGETHER', style: TextStyle(fontFamily: 'Gilroy', fontSize: 36, fontWeight: FontWeight.bold)),
                Text('TO BE BETTER', style: TextStyle(fontFamily: 'Gilroy', fontSize: 36, fontWeight: FontWeight.bold)),
              ],
            ),
            YellowButton(
              horzPadding: 68,
              vertPadding: 10,
              elevation: 12,
              text: 'Get Started',
              onPressed: ()=> Get.to(()=>Login()),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

