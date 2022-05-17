import 'package:flutter/material.dart';
import 'package:ui_deneme/screens/home_screen.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      },
      child: Hero(
        tag: "launch",
        child: Image.asset("assets/kolayhesap_logo.png"),
      ),
    );
  }
}
