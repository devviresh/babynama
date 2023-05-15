import 'package:babynama/pages/about_page.dart';
import 'package:babynama/pages/consult_page.dart';
import 'package:babynama/pages/plans_page.dart';
import 'package:babynama/pages/profile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  final List<Widget> _children = [About(),Plans(),Consult(),Profile()];


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
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notifications_on_rounded,color: Colors.red,))
        ],
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Divider(height: 1.0, thickness: 2.0,color: Colors.red,),
          Expanded(
            child: IndexedStack(
              index: _currentIndex,
              children: _children,
            ),
          ),
          Divider(height: 1.0, thickness: 2.0,color: Colors.red,),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        backgroundColor: Colors.transparent,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.post_add_rounded), label: 'Plans'),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_phone_msg), label: 'Consult'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: 'Profile')
        ],
      ),
    );
  }
}
