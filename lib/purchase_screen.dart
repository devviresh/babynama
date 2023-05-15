import 'package:flutter/material.dart';

class PurchasePage extends StatefulWidget {
  const PurchasePage({Key? key}) : super(key: key);
  static const String id = 'purchase_page';

  @override
  State<PurchasePage> createState() => _PurchasePageState();
}

class _PurchasePageState extends State<PurchasePage> {
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
          Text('purchase'),
        ],
      ),
    );
  }
}
