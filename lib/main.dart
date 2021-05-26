import 'package:flutter/material.dart';
import 'package:first_app/screens/tab_view_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop',
      theme: ThemeData(
        // brightness: Brightness.dark, //темный фон
        primaryColor: Colors.grey[200],
      ),
      home: TabViewScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}