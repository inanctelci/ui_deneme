import 'package:flutter/material.dart';

class BuildGridViewItem extends StatelessWidget {
  final Color boxColor;
  final String text;
  final String imgPath;

  const BuildGridViewItem({
    Key? key,
    required this.boxColor,
    required this.text,
    required this.imgPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        height: MediaQuery.of(context).size.width * 0.3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: MediaQuery.of(context).size.width * 0.12,
                      child: Image.asset(
                        imgPath,
                        fit: BoxFit.contain,
                      ),
                    )),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      text,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
