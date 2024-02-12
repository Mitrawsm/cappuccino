
import 'package:capuccino/bottombar.dart';
import 'package:capuccino/coffeedetails.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cappuccino',
      home: Scaffold(
        body: Center(
          child: Column(
            children: [   
                CoffeeDetails(),
                ]),
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
