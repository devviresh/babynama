import 'package:babynama/register_screen.dart';
import 'package:flutter/material.dart';

import 'Login_screen.dart';
import 'home_screen.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);
  static const String id = 'auth_page';

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //       image: AssetImage('images/welcome.jpg'),
        //       fit: BoxFit.cover
        //   ),
        // ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
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
            Text('Sign In / Sign Up',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LoginPage.id);
                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 47.0, vertical: 12.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                    child: Text('Email')),
                SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, HomePage.id);
                  },
                  // onPressed: null,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  child: Text('Google', style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RegisterPage.id);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  padding:
                  EdgeInsets.symmetric(horizontal: 110.0, vertical: 12.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.red)),
                ),
                child: Text('Register')),
            SizedBox(height: 30.0)
          ],
        ),
      ),
    );
  }
}
