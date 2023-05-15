import 'package:flutter/material.dart';

class Consult extends StatefulWidget {
  const Consult({Key? key}) : super(key: key);

  @override
  State<Consult> createState() => _ConsultState();
}

class _ConsultState extends State<Consult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset('images/baby.jpg'))),
          SizedBox(height: 10.0),
          Text('Our Doctors',style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),),
          Text('Best in Business'),
          SizedBox(height:20.0),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for(int i = 0; i<5; i++)
                  Stack(
                    alignment: Alignment.topCenter,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 320.0,
                        padding: EdgeInsets.all(20.0),
                        margin: EdgeInsets.fromLTRB(10.0,60.0,10.0,10.0),
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height:30.0),
                            Text('Dr. Dhanya Soodhana',style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.0),
                            Text('MBBS, MD Fellowship in Pediatric and Adolescent Endocrinology',style: TextStyle(fontSize: 16.0),textAlign: TextAlign.center,),
                            SizedBox(height: 10.0),
                            Text('7 years of experience in KMC, Manipal'),
                            SizedBox(height: 10.0),
                            ElevatedButton(onPressed: (){}, child: Text('Consult Now',style: TextStyle(fontSize: 16.0),))
                          ],
                        ),
                      ),
                      Positioned(top: 0.0,child: Container(
                        height: 100.0,
                        width: 100.0,
                        child: ClipRRect(child: Image.network('https://babynama.com/_next/image?url=%2F_next%2Fstatic%2Fmedia%2FdrDhanya.687eb8d9.webp&w=128&q=75',fit: BoxFit.fill,)),
                      ),)
                    ],
                  ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
