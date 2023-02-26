import 'package:flutter/material.dart';

class EllipseIcon extends StatelessWidget {

  final bool isActive;

  const EllipseIcon({this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      AssetImage('lib/homepage/assets/Ellipse 215.png'),
      color: isActive ? const Color.fromRGBO(8, 247, 254, 1) : Colors.grey,
    );
  }
}