import 'package:flutter/material.dart';

class SelectionPage extends StatelessWidget {

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Column(
        children: [
          Text(
              'What would you like to watch?'
          ),
          ListTile(
            leading: Icon(
              Icons.search,
            ),
            title: Text(
              'Search',
            ),
            trailing: Icon(
              Icons.mic,
            ),
          ),
          Text('New Movies'),
          Expanded(
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset('lib/movies_selection/assets/image 91.png'),
                  Image.asset('lib/movies_selection/assets/image 92.png'),
                  Image.asset('lib/movies_selection/assets/image 90.png'),
                ]
            ),
          ),
          Text('Upcoming Movies'),
          Expanded(
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset('lib/movies_selection/assets/image 93.png'),
                  Image.asset('lib/movies_selection/assets/image 84.png'),
                  Image.asset('lib/movies_selection/assets/image 94.png'),
                ]
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: ImageIcon(
          AssetImage('lib/movies_selection/icons/Symbol-1.png'),
        ),
        backgroundColor: Color.fromRGBO(254, 83, 187, 1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage('lib/movies_selection/icons/Symbol.png'),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage('lib/movies_selection/icons/PlayButtonInTV.png'),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage('lib/movies_selection/icons/Library.png'),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage('lib/movies_selection/icons/Down_Arrow.png'),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}