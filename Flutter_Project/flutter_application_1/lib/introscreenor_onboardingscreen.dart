import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'splash2.dart';
import 'stateful_login.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: IntroScreen(),));
}
class IntroScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration= PageDecoration(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w900,fontSize: 40,color: Colors.purple
      ),
      bodyTextStyle: GoogleFonts.aBeeZee(fontStyle: FontStyle.italic,fontSize: 20,color: Colors.pinkAccent),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.black,
          Colors.grey,
          Colors.black38,
          Colors.white,
        ])
      )

    );
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: pageDecoration,
          title: 'First Page',
          body: "Introduction screen shows the details of the app and demo of pages",
          image: IntroImage("https://images.unsplash.com/photo-1595152772835-219674b2a8a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
        ),
        PageViewModel(
          decoration: pageDecoration,
          title: 'Second Page',
          body: "Introduction screen shows the details of the app and demo of pages",
          image: IntroImage("https://images.unsplash.com/photo-1595152772835-219674b2a8a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
        ),
        PageViewModel(
          decoration: pageDecoration,
          title: 'Third Page',
          body: "Introduction screen shows the details of the app and demo of pages",
          image: IntroImage("https://images.unsplash.com/photo-1595152772835-219674b2a8a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
        ),
      ],
      onDone: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Splash2() )),
      onSkip: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login2())),
      showSkipButton: true,
      skip: Text('skip'),
      next: Icon(Icons.arrow_forward_rounded),
      done: Text("Done"),
      dotsDecorator: DotsDecorator(
        size: Size(10, 12),
        color: Colors.grey,
        activeSize: Size(25, 12),
        activeColor: Colors.yellow,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)))
      ),
    );
  }

  Widget IntroImage(String image){
    return Container(
     height: 700,
     width: double.infinity,
     decoration: BoxDecoration(
      image: DecorationImage(image: NetworkImage(image),)
      ),
    );
  }
}