import 'package:babynama/auth_screen.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);
  static const String id = 'welcome_page';

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Babynama'),
      //   actions: [
      //     IconButton(onPressed: (){}, icon: Icon(Icons.notifications_on_rounded))
      //   ],
      // ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                      tag: 'icon',
                      child: Image.network('https://babynama.com/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Flogo-new.13630e49.webp&w=1920&q=75'),
                    ),
                    Text('A team of trusted Pediatricians',
                        style: TextStyle(
                            color: Colors.red[100],
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const Expanded(
                flex: 3,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('Commited to\nresolve\nall your\nbaby related\nquestions',
                        style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.w800)),
                  )),
              SizedBox(height: 20.0),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text('A team of trusted Pediatricians',
                    style: TextStyle(
                        color: Colors.red[100],
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 40.0),
              Text(
                  'Read our Privacy Policy. Tap "Agree & Continue" to accept the Terms of Service.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12.0)),
              SizedBox(height: 10.0),
              Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AuthPage.id);
                    },
                    style: ElevatedButton.styleFrom(
                        padding:
                        EdgeInsets.symmetric(horizontal: 90.0, vertical: 12.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                    child: Text('Agree & Continue'),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
