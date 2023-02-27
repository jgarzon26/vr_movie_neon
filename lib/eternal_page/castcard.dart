import 'package:flutter/material.dart';

class CastCard extends StatelessWidget {
  final String name;
  final String image;

  CastCard({required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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