import 'package:flutter/material.dart';

class CastCard extends StatelessWidget {
  final String name;
  final String image;
  final Color? color;

  CastCard({required this.name, required this.image, this.color});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: color,
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
      title: Text(
        name,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}