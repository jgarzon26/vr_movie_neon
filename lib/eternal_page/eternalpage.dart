import 'package:flutter/material.dart';

class EternalPage extends StatelessWidget {

  @override
  Widget build (BuildContext context){

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: ImageIcon(
            AssetImage('lib/eternal_page/icons/back.png'),
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage('lib/eternal_page/icons/menu.png'),
              color: Colors.white,
            ),
          ),
        ],
      ),
      
    );
  }
}