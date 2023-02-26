import 'package:flutter/material.dart';
import 'package:vr_movie_neon/homepage/EllipseIcon.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 25, 27, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 328,
                  height: 328,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        HSLColor.fromColor(Color.fromRGBO(254, 83, 187, 1)).withLightness(0.5).toColor(),
                        //Color.fromRGBO(254, 83, 187, 1),
                        HSLColor.fromColor(Color.fromRGBO(25, 25, 27, 1),).withLightness(0.3).toColor(),
                        //Color.fromRGBO(25, 25, 27, 1),
                        HSLColor.fromColor(Color.fromRGBO(9, 251, 211, 1)).withLightness(0.5).toColor(),
                        //Color.fromRGBO(9, 251, 211, 1),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      padding: EdgeInsets.only(top: 30,),
                      width: 328,
                      height: 328,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(254, 83, 187, 1),
                            Color.fromRGBO(25, 25, 27, 0.7),
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
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(200),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'lib/homepage/assets/vr_guy.png',
                          alignment: Alignment.centerLeft,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: -30,
                  top: -20,
                  child: Container(
                    height: 166,
                    width: 166,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        colors: [
                          Color.fromRGBO(254, 83, 187, 0.6),
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
                Positioned(
                  left: 180,
                  top: 180,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        colors: [
                          Color.fromRGBO(9, 251, 211, 0.6),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 49),
              child: Text(
                'Watch movies in Virtual Reality',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 34,
                  height: 1.3,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 93),
              child: Text(
                'Download and watch offline wherever you are',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.75),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              width: 160,
              height: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75),
                gradient: LinearGradient(
                  colors: [
                    HSLColor.fromColor(Color.fromRGBO(254, 83, 187, 1)).withLightness(0.5).toColor(),
                    //Color.fromRGBO(254, 83, 187, 1),
                    HSLColor.fromColor(Color.fromRGBO(25, 25, 27, 1),).withLightness(0.3).toColor(),
                    //Color.fromRGBO(25, 25, 27, 1),
                    HSLColor.fromColor(Color.fromRGBO(9, 251, 211, 1)).withLightness(0.5).toColor(),
                  ],
                ),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {},
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  //constraints: BoxConstraints(maxWidth: 200.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text(
                    "Sign Up",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
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