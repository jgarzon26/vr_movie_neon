import 'package:flutter/material.dart';

class MovieImageButton extends StatelessWidget {

  MovieImageButton({required this.imageLink});

  final String imageLink;
  @override
  Widget build(BuildContext context){

    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: 150,
      height: 200,
      transform: Matrix4.skewX(-.1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imageLink),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}