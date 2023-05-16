import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 30.0),
            Text('Pediatricians just a WhatsApp message away',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32.0),),
            SizedBox(height: 15.0),
            Text('A commitment to resolve all your baby related questions in 15 minutes',textAlign: TextAlign.center,style: TextStyle(fontSize: 16.0),),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(color: Colors.blue,onPressed: (){}, child: Text('Care Plans',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),)),
                SizedBox(width: 30.0),
                MaterialButton(color: Colors.amber,onPressed: (){}, child: Text('Try for Free',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold))),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqOxhx7GsdpD1wjUL7f-GfwOqKsOn8Z4lXg1srnw3QCXTl9NcCybDkU_BJ0nFMj6OyYxQ&usqp=CAU',fit: BoxFit.cover,),
              ),
            ),
            SizedBox(height: 15.0),
            Text('Why Babynama?',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),),
            SizedBox(height: 15.0),
            Text('Our team of trusted Pediatricians will resolve your queries end-to-end on WhatsApp',textAlign: TextAlign.center,style: TextStyle(fontSize: 16.0),),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Column(
                children: [
                  Image.asset('images/google.png',
                  height: 50.0),
                  SizedBox(height: 10.0),
                  Text('No unverifid answers from Google or ChatGPT',textAlign: TextAlign.center,style: TextStyle(fontSize: 16.0),)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: Column(
                children: [
                  Image.asset('images/pediatrician.png',
                      height: 50.0),
                  SizedBox(height: 10.0),
                  Text('No Waiting for your pediatrician to reply or be available',textAlign: TextAlign.center,style: TextStyle(fontSize: 16.0),)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: Column(
                children: [
                  Image.asset('images/ambulance.png',
                      height: 50.0),
                  SizedBox(height: 10.0),
                  Text('No unnecessary emergency hospital visits, even at night',textAlign: TextAlign.center,style: TextStyle(fontSize: 16.0),)
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
