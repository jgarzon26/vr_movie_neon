import 'package:flutter/material.dart';
import 'package:vr_movie_neon/eternal_page/data/cast.dart';
import 'castcard.dart';

class EternalPage extends StatelessWidget {

  @override
  Widget build (BuildContext context){
    
    const _rating = 3;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromRGBO(25, 25, 27, 0.3),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            border: Border.all(
              width: 3,
              color: Colors.white,
            ),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: ImageIcon(
              AssetImage('lib/eternal_page/icons/back.png'),
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              border: Border.all(
                width: 3,
                color: Colors.white,
              ),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage('lib/eternal_page/icons/menu.png'),
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            child: Stack(
              children: [
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black],
                      stops: [0, 0.6],
                    ).createShader(bounds);
                  },
                  child: Image.asset('lib/eternal_page/assets/image 76.png'),
                  blendMode: BlendMode.srcATop,
                ),
                Positioned(
                  right: 10,
                  bottom: 100,

                  top: 200,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: ImageIcon(
                      AssetImage('lib/eternal_page/icons/play.png'),
                      color: Colors.white,
                    ),
                    backgroundColor: Color.fromRGBO(25, 25, 27, 1),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 230,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Eternals',
                          style: TextStyle(
                            fontSize: 30,
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
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Text(
                            "The saga of the Eternals, "
                                "a race of immortal beings who lived on Earth "
                                "and shaped its history and civilizations.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              color: Color.fromRGBO(25, 25, 27, 1),
              height: 5,
              width: MediaQuery.of(context).size.width * 0.8,
            ),
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
    );
  }
}