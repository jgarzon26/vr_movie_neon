import 'package:flutter/material.dart';
import 'package:vr_movie_neon/homepage/EllipseIcon.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //backgroundColor: Color.fromRGBO(25, 25, 27, 1),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  left: 6,
                  top: 83,
                  child: Container(
                    height: 166,
                    width: 166,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        colors: [
                          Color.fromRGBO(254, 83, 187, 1),
                          Color.fromRGBO(254, 83, 187, 0),
                        ],
                        center: Alignment.center,
                        radius: 0.5,
                      ),
                      border: Border.all(
                        color: Colors.transparent,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        HSLColor.fromColor(Color.fromRGBO(254, 83, 187, 1)).withLightness(0.5).toColor(),
                        Color.fromRGBO(254, 83, 187, 1),
                        HSLColor.fromColor(Color.fromRGBO(25, 25, 27, 1),).withLightness(0.3).toColor(),
                        Color.fromRGBO(25, 25, 27, 1),
                        HSLColor.fromColor(Color.fromRGBO(9, 251, 211, 1)).withLightness(0.5).toColor(),
                        Color.fromRGBO(9, 251, 211, 1),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    border: Border.all(
                      color: Colors.transparent,
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      width: 328,
                      height: 328,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(254, 83, 187, 1),
                            Color.fromRGBO(25, 25, 27, 1),
                            Color.fromRGBO(9, 251, 211, 1),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        border: Border.all(
                          color: Colors.transparent,
                          width: 2,
                        ),
                      ),
                      child: Image.asset(
                        'lib/homepage/assets/vr_guy.png',
                        width: 436.08,
                        height: 278,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 211,
                  top: 201,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        colors: [
                          Color.fromRGBO(9, 251, 211, 1),
                          Color.fromRGBO(9, 251, 211, 0),
                        ],
                        center: Alignment.center,
                        radius: 0.5,
                      ),
                      border: Border.all(
                        color: Colors.transparent,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ]
            ),
            Text('Watch movies in Virtual Reality'),
            Text('Download and watch offline wherever you are'),
            ElevatedButton(
              onPressed: () {},
              child: Text('Sign Up'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EllipseIcon(isActive: true,),
                EllipseIcon(),
                EllipseIcon(),
              ],
            )
          ],
        ),
      ),
    );
  }
}