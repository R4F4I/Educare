import 'package:educare/config.dart';
import 'package:educare/widgets/logo.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                EducareLogo(size: 40,),
              ],
            ),
            Text(
              'Hey John',
              style: TextStyle(
                fontFamily: 'Poppins',
                // fontSize: 
              ),
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Ready for your',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                    ),
                  ),
                  TextSpan(
                    text: ' next Lesson?',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: educareYellow,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(children: [
              SizedBox(
                width: MediaQuery.of(context).size.width-75,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: educareYellow,
                      )
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search),
                    label: Text('search course', style: TextStyle(fontFamily: 'Poppins', color: Color.fromARGB(125, 0, 0, 77))),
                  ),
                ),
              ),
              Icon(Icons.notifications_none_rounded, size: 50, color: Color(0xff213E50),),
            ],),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Categories', style: TextStyle(fontFamily: 'Poppins', fontSize: 20, fontWeight: FontWeight.bold)),
              Text('see more', style: TextStyle(fontFamily: 'Poppins', fontSize: 15, decoration: TextDecoration.underline, color: educareYellow, decorationColor: educareYellow))
            ],),
            

          ],
        ),
      ),
    );
  }
}