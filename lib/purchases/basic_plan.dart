import 'package:babynama/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../constants.dart';

class BasicCare extends StatefulWidget {
  const BasicCare({Key? key}) : super(key: key);

  static const String id = 'basic_care';

  @override
  State<BasicCare> createState() => _BasicCareState();
}

class _BasicCareState extends State<BasicCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Image.network(
          'https://babynama.com/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Flogo-new.13630e49.webp&w=1920&q=75',
          width: 150.0,
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.close))
        ],
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image.network(
            //     'https://babynama.com/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Flogo-new.13630e49.webp&w=1920&q=75'),
            // Text('A team of trusted Pediatricians',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //         color: Colors.red[100],
            //         fontSize: 15.0,
            //         fontWeight: FontWeight.bold)),
            Divider(height: 1.0, thickness: 2.0,color: Colors.red,),
            SizedBox(height: 30.0),
            Text(
              'Basic Care Plan Includes',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            SizedBox(height: 10.0),
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
            SizedBox(height: 30.0),
            Text(
              'Enter Details to continue',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        // name = value;
                      },
                      decoration: kInputStyle.copyWith(
                          labelText: 'Enter Baby\'s Name')),
                  SizedBox(height: 15.0),
                  TextFormField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        // age = value;
                      },
                      decoration:
                      kInputStyle.copyWith(labelText: 'Baby\'s age')),
                  SizedBox(height: 15.0),
                  TextFormField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        // contact = value;
                      },
                      decoration:
                      kInputStyle.copyWith(labelText: 'Contact no.')),
                  SizedBox(height: 25.0),
                  MaterialButton(
                    onPressed: () {
                      Alert(
                        context: context,
                        type: AlertType.success,
                        title: "Thank you",
                        desc: "Basic Care Plan Activated",
                        style: kAlertStyle,
                        buttons: [
                          DialogButton(
                            child: Text("Back to Homepage",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            onPressed: () => Navigator.pushNamed(context, HomePage.id),
                            color: Colors.green[400],
                          )
                        ],
                      ).show();
                    },
                    child: Text('Start Basic Care',
                        style: TextStyle(fontSize: 16.0)),
                    color: Colors.blueAccent,
                    height: 42.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                  SizedBox(height: 30.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
