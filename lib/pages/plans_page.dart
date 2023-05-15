import 'package:babynama/pages/free_preview.dart';
import 'package:babynama/purchase_screen.dart';
import 'package:babynama/purchases/basic_plan.dart';
import 'package:babynama/purchases/holistic_plan.dart';
import 'package:babynama/purchases/prime_plan.dart';
import 'package:flutter/material.dart';

class Plans extends StatefulWidget {
  const Plans({Key? key}) : super(key: key);

  @override
  State<Plans> createState() => _PlansState();
}

class _PlansState extends State<Plans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(10.0),
      children: [
        Container(
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.asset('images/mother.jpg'))),
        Text('Pediatricians just a message away',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500)),
        SizedBox(height: 15.0),
        Text('Say goodbye to new parent anxiety,\nTry it for just Rs 99',
            style: TextStyle(fontSize: 18.0, color: Colors.white70)),
        SizedBox(height: 15.0),
        MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, PreviewAccess.id);
          },
          child: Text('Start Free Preview', style: TextStyle(fontSize: 16.0)),
          color: Colors.blueAccent,
          height: 45.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
        Divider(height: 50.0,thickness: 4.0,color: Colors.white38,),
        Center(
            child: Text('Our Care Plans',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold))),
        SizedBox(height: 20.0),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 0.0),
          decoration: BoxDecoration(
            color: Colors.white30,
            borderRadius: BorderRadius.circular(10.0)
          ),
          child: Column(
            children: [
              ExpansionTile(
                title: Text('Basic Care',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                subtitle: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('₹ 2499'), Text('per 3 month')],
                    ),
                    Text('10 days Refund Policy')
                  ],
                ),
                children: [
                  Divider(color: Colors.white70),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline_rounded,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10.0),
                        Expanded(child: Text('IPediatric care in 15 minutes')),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline_rounded,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                            child:
                                Text('Instant chat with pediatricians on WhatsApp'))
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(Icons.check_circle_outline_rounded,
                            color: Colors.green),
                        SizedBox(width: 10.0),
                        Expanded(
                            child: Text('Free pediatrician consultations (day)')),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline_rounded,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10.0),
                        Expanded(child: Text('Live Yoga Sessions')),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(height: 1.0),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, BasicCare.id);
              }, child: Text('Get Started'))
            ],
          ),
        ),
        Divider(color: Colors.red),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 0.0),
          decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.circular(10.0)
          ),
          child: Column(
            children: [
              ExpansionTile(
                title: Text('Prime Care',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                subtitle: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('₹ 4999'), Text('per 3 month')],
                    ),
                    Text('10 days Refund Policy')
                  ],
                ),
                children: [
                  Divider(color: Colors.white70),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline_rounded,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10.0),
                        Expanded(child: Text('Pediatric care in 15 minutes, lactation, nutrition, monthly milestones, emergency support')),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline_rounded,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10.0),
                        Expanded(child: Text('Everything in Basic Care')),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline_rounded,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                            child: Text('24x7 free pediatrician consultations')),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline_rounded,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                            child: Text(
                                'Monthly growth and milestones tracking by pediatrician')),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline_rounded,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10.0),
                        Expanded(child: Text('Lactation and Weaning Support')),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(height: 1.0),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, PrimeCare.id);
              }, child: Text('Get Started'))
            ],
          ),
        ),
        Divider(color: Colors.red),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 0.0),
          decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.circular(10.0)
          ),
          child: Column(
            children: [
              ExpansionTile(
                title: Text('Holistic Care',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                subtitle: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('₹ 9999'), Text('per 3 month')],
                    ),
                    Text('10 days Refund Policy')
                  ],
                ),
                children: [
                  Divider(color: Colors.white70),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline_rounded,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                            child: Text('Dedicated pediatrician for your baby, personal care plan, Best possible baby care')),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline_rounded,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                            child: Text('Everything included in the PRIME Plan')),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline_rounded,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                            child:
                                Text('Dedicated pediatrician just for your baby')),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline_rounded,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                            child: Text(
                                'Personalized care plan for your baby and you')),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline_rounded,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                            child: Text('All Consultations and workshops free*')),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline_rounded,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                            child: Text(
                                'We keep adding new services to provide more value to you')),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(height: 1.0),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, HolisticCare.id);
              }, child: Text('Get Started'))
            ],
          ),
        ),
      ],
    ));
  }
}
