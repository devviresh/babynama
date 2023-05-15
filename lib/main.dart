import 'package:babynama/Login_screen.dart';
import 'package:babynama/auth_screen.dart';
import 'package:babynama/home_screen.dart';
import 'package:babynama/pages/free_preview.dart';
import 'package:babynama/purchase_screen.dart';
import 'package:babynama/purchases/basic_plan.dart';
import 'package:babynama/purchases/holistic_plan.dart';
import 'package:babynama/purchases/prime_plan.dart';
import 'package:babynama/register_screen.dart';
import 'package:babynama/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Babynama());
}

class Babynama extends StatelessWidget {
  const Babynama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Babynama',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.red,
        canvasColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        bottomNavigationBarTheme: BottomNavigationBarThemeData().copyWith(
          selectedItemColor: Colors.red
        )
      ),
      initialRoute: WelcomePage.id,
      routes: {
        WelcomePage.id: (context) => WelcomePage(),
        AuthPage.id: (context) => AuthPage(),
        RegisterPage.id: (context) => RegisterPage(),
        LoginPage.id: (context) => LoginPage(),
        HomePage.id: (context) => HomePage(),
        PurchasePage.id: (context) => PurchasePage(),
        PreviewAccess.id: (context) => PreviewAccess(),
        BasicCare.id: (context) => BasicCare(),
        PrimeCare.id: (context) => PrimeCare(),
        HolisticCare.id: (context) => HolisticCare(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

