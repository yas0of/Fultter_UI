import 'package:flutter/material.dart';

import 'cards.dart';
import 'signin.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      routes: {
          '/Sign_Up': (BuildContext context) => const SignIn()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
Color selection = Colors.green;

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  late Animation animation,delayedAnimation , muchDelayedAnimation;
  late AnimationController animationController;

  @override
  void initState(){
    super.initState();
    animationController=
        AnimationController(duration: const Duration(seconds: 1),vsync: this);
    animation =Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(
            curve: Curves.fastOutSlowIn,
            parent: animationController
        )
    );
    delayedAnimation =Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(
            curve: const Interval(0.5,1.0, curve: Curves.fastOutSlowIn),
            parent: animationController
        )
    );
    muchDelayedAnimation =Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(
            curve: const Interval(0.8,1.0, curve: Curves.fastOutSlowIn),
            parent: animationController
        )
    );

  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    animationController.forward();

    //return const Cards();
    //return const Profile();
    return const SignIn();

  }

}