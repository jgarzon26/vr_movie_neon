import 'package:flutter/material.dart';
import 'package:vr_movie_neon/eternal_page/data/cast.dart';
import 'castcard.dart';

class EternalPage extends StatelessWidget {

  @override
  Widget build (BuildContext context){
    
    const _rating = 3;

    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 25, 27, 0.3),
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
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/eternal_page/assets/image 76.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Eternals',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '2021 Action-Adventure-Fantasy 2h36m',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: () {
                        List<Widget> stars = [];
                        for (int i = 0; i < 5; i++) {
                          stars.add(
                            Icon(
                              Icons.star,
                              color: (i < _rating) ? Color.fromRGBO(242, 163, 58, 1) : Colors.white,
                            ),
                          );
                        }
                        return stars;
                      }(),
                    ),
                    Text(
                      "The saga of the Eternals, "
                          "a race of immortal beings who lived on Earth "
                          "and shaped its history and civilizations.",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            color: Color.fromRGBO(25, 25, 27, 1),
            height: 10,
            width: double.infinity,
          ),
          Text('Cast'),
          /*
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: () {
                List<Widget> castCards = [];
                for (int i = 0; i < cast.length; i++) {
                  castCards.add(
                    CastCard(
                      name: cast[i]['name']!,
                      image: cast[i]['image']!,
                    ),
                  );
                }
                return castCards;
              }(),
            ),
          ),
           */
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: ImageIcon(
          AssetImage('lib/eternal_page/icons/play.png'),
          color: Colors.white,
        ),
        backgroundColor: Color.fromRGBO(25, 25, 27, 1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}