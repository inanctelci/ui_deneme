import 'package:flutter/material.dart';
import 'package:ui_deneme/screens/widgets/gridview_item.dart';

class BuildGridView extends StatelessWidget {
  const BuildGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: BuildGridViewItem(
              boxColor: Colors.yellow,
              text: "Para Transferi",
              imgPath: "assets/para_transferleri_ikon.png"),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: BuildGridViewItem(
              imgPath: "assets/cuzdan_ikon.png",
              text: "Cüzdan",
              boxColor: Colors.green),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: BuildGridViewItem(
              imgPath: "assets/oneriler_ikon.png",
              text: "Yatırım Önerileri",
              boxColor: Colors.blue),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: BuildGridViewItem(
              imgPath: "assets/kredi_karti_ikon.png",
              text: "Kartlarım",
              boxColor: Colors.red),
        ),
      ],
    );
  }
}
