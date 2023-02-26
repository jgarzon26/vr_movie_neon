import 'package:flutter/material.dart';
import 'package:vr_movie_neon/movies_selection/data/movieImageButton.dart';
import 'package:vr_movie_neon/movies_selection/data/upcoming_movies.dart';
import 'package:vr_movie_neon/movies_selection/new_movies.dart';

class SelectionPage extends StatelessWidget {

  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 25, 27, 0.8),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: Text(
                'What would you like to watch?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              horizontalTitleGap: 0,
              tileColor: Color.fromRGBO(25, 25, 27, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              leading: Icon(
                Icons.search,
                color: Colors.white,
              ),
              title: Text(
                'Search',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              trailing: Icon(
                Icons.mic,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'New Movies',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  )
                ),
              ),
            ),
            SizedBox(
              height: 180,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: newMovies.map((e) => MovieImageButton(imageLink: e,)).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    'Upcoming Movies',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    )
                ),
              ),
            ),
            SizedBox(
              height: 180,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: upcomingMovies.map((e) => MovieImageButton(imageLink: e,)).toList(),
              ),
            ),
          ],
        ),
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
        color: Color.fromRGBO(25, 25, 27, 1),
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
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage('lib/movies_selection/icons/PlayButtonInTV.png'),
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage('lib/movies_selection/icons/Library.png'),
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage('lib/movies_selection/icons/Down_Arrow.png'),
                  color: Colors.white,
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}