import 'package:flutter/material.dart';

import 'widgets/build_text.dart';
import 'widgets/grid_view.dart';
import 'widgets/top_row_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(11, 40, 10, 0),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Expanded(
                    child: BuildTopRow(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: BuildText(
                    text: "Hoşgeldiniz",
                    fontSize: 25,
                    textColor: Colors.orange),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: BuildText(
                    text: "Mert Güneş", fontSize: 50, textColor: Colors.black),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "Arama yap",
                  prefixIcon: Icon(Icons.search_rounded),
                ),
              ),
              Expanded(
                child: BuildGridView(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
