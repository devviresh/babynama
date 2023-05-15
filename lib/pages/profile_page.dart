import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Material(
            elevation: 5.0,
            child: Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 20.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white12
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    foregroundImage: AssetImage('images/viresh.jpeg')
                    as ImageProvider,
                  ),
                  SizedBox(height: 10.0),
                  Text('Viresh Dev',
                      style: TextStyle(fontSize: 30.0)),
                  Text('Vaishali, Bihar',
                      style: TextStyle(color: Colors.white60))
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
