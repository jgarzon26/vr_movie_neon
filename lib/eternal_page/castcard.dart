import 'package:flutter/material.dart';

class CastCard extends StatelessWidget {
  final String name;
  final String image;

  CastCard({required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.comfortable,
      horizontalTitleGap: -20,
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(image),
      ),
      title: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.15),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}