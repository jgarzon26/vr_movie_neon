import 'package:flutter/material.dart';
import 'package:vr_movie_neon/homepage/EllipseIcon.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'lib/homepage/assets/vr_guy.png',
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