import 'package:flutter/material.dart';
import 'package:linkedin/mainScreens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Linkedin',
      debugShowCheckedModeBanner: false,
    routes: {
      "/" : (context) => MainScreen(),
    },

      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
     
    );
  }
}


