import 'package:flutter/material.dart';
import 'package:ui_deneme/screens/widgets/search_bar.dart';

import 'widgets/build_text.dart';
import 'widgets/grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 239, 226),
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.17,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            color: Colors.orange,
            onPressed: () {},
            icon: const Icon(Icons.menu_outlined),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_active),
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange,
                  border: Border.all(color: Colors.orange, width: 3),
                ),
                child: const CircleAvatar(
                  backgroundImage: AssetImage("assets/profil_foto.jpg"),
                ),
              ),
              iconSize: 60,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 16, 16, 0),
              child: BuildText(
                  text: "Hoşgeldiniz", fontSize: 25, textColor: Colors.orange),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 16, 16),
              child: BuildText(
                  text: "Mert Güneş", fontSize: 50, textColor: Colors.black),
            ),
            SizedBox(height: 25),
            SearchBar(),
            SizedBox(height: 75),
            Expanded(
              child: BuildGridView(),
            )
          ],
        ),
      ),
    );
  }
}
