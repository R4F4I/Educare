import 'package:educare/config.dart';
import 'package:educare/minor_pages/schedule_view.dart';
import 'package:educare/widgets/logo.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Padding(
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
                  width: MediaQuery.of(context).size.width-85,
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
            
              SizedBox(
                height: 167,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      child: categoriesButton(index),
                    );
                  } 
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('Popular Tutors', style: TextStyle(fontFamily: 'Poppins', fontSize: 20, fontWeight: FontWeight.bold)),
                Text('see more', style: TextStyle(fontFamily: 'Poppins', fontSize: 15, decoration: TextDecoration.underline, color: educareYellow, decorationColor: educareYellow))
              ],),
              SizedBox(
                height: 350,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      child: tutorCardButton(context),
                    );
                  } 
                ),
              ),
              SizedBox(height: 20,),
              Text('On Going', style: TextStyle(fontFamily: 'Poppins', fontSize: 20, fontWeight: FontWeight.bold)),
              ScheduleView(),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton categoriesButton(int index) {
    return ElevatedButton(
                      onPressed: (){}, 
                      style: ElevatedButton.styleFrom(
                        elevation: 7,
                        padding: EdgeInsets.zero,
                        backgroundColor: index==0?educareYellow:Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: index==0?Colors.white:educareYellow, width: 1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Color.fromARGB(255, 246, 243, 243),
                              radius: 37,
                              child: ClipOval(
                                child: Image.asset('images/laptop-isometric.png'),
                              ),
                            ),
                            Text('English',style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ))
                          ]
                        )
                      ),
                    );
  }

  Widget tutorCardButton(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 7,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.75,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              margin: EdgeInsets.zero,
              color: educarePurple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                )
        
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 246, 243, 243),
                        radius: 37,
                        child: ClipOval(
                          child: Image.asset('images/laptop-isometric.png'),
                        ),
                      ),
                    ),
                    SizedBox(width: 16,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('English ',style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              )),
                              Icon(Icons.verified, color: Colors.white),
                            ],
                          ),
                          Text('Birmingham University, Psychology (Bachelors)',style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              )),
                        ]
                      ),
                    )
                  ]
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Offers: '),
                      TextBox(text: 'Mathematics'),
                      TextBox(text: 'biology'),
                      TextBox(text: 'Physics'),
                      Text(' +5 more'),
                  ],),
                  SizedBox(height: 10,),
                  Text('Experienced online tutor in Psychology, Mathematics, Music Theory, and Biology for students looking...',style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    color: Colors.black
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star, color: educareYellow,),
                              RichText(text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '4.5',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' (116 Reviews)',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      color: Colors.black
                                    ),
                                  ),
                                ]
                              ))

                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.book_rounded, color: educareYellow,),
                              RichText(text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '1282',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' (completed Lessons)',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      color: Colors.black
                                    ),
                                  ),
                                ]
                              ))

                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 85,
                        height: 40,
                        child: Stack(
                          children: [
                            Positioned(
                              right: 30,
                              child: Text('\$56', style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: educareYellow),),
                            ),
                            Positioned(
                              top:15,
                              left: 55,
                              child: Text('/hr', style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: educareYellow),),
                            ),
                          ]
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }
}

class TextBox extends StatelessWidget {
  final String? text;
  final Color? color;
  const TextBox({
    super.key,
    this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color??educarePurple,
          borderRadius: BorderRadius.circular(3)
    
        ),
        child: Padding(
          padding: EdgeInsets.all(3),
          child: Text(text??'text', style: TextStyle(color: Colors.white, fontFamily: 'Poppins')),
        ),
      ),
    );
  }
}