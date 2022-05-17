import 'package:flutter/material.dart';

class BuildTopRow extends StatelessWidget {
  const BuildTopRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.menu_outlined)),
        Row(
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.notifications_active)),
            IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                backgroundImage: AssetImage("assets/profil_foto.jpg"),
              ),
            ),
          ],
        )
      ],
    );
  }
}
