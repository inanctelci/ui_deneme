import 'package:flutter/material.dart';
import 'package:ui_deneme/screens/launch_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.transparent, primarySwatch: Colors.orange),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Center(
          child: LaunchScreen(),
        ),
      ),
    );
  }
}
