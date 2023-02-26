import 'package:flutter/material.dart';
import 'package:vr_movie_neon/movies_selection/data/movieImageButton.dart';
import 'package:vr_movie_neon/movies_selection/data/upcoming_movies.dart';
import 'package:vr_movie_neon/movies_selection/new_movies.dart';

class SelectionPage extends StatelessWidget {

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
              'What would you like to watch?',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              height: 210,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: newMovies.map((e) => MovieImageButton(imageLink: e,)).toList(),
              ),
            ),
          ),
          Text('Upcoming Movies'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              height: 210,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: upcomingMovies.map((e) => MovieImageButton(imageLink: e,)).toList(),
              ),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 75,
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