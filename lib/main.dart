import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
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
    return AnimatedBuilder(animation: animationController,
    builder: (BuildContext context, Widget? child){
    
      return Scaffold(
          appBar: AppBar(
            title: const FlutterLogo(
              size: 30.0,
            ),
            elevation: 0.0,
            centerTitle: true,
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: null, iconSize: 30, icon: Icon(Icons.arrow_back)),
            actions: const <Widget>[
              IconButton(onPressed: null, iconSize: 30, icon: Icon(Icons.menu)),
            ],
          ),
          body: ListView(
            shrinkWrap: true,
            children: [
              Stack(
                children: [
                  Transform(
                    transform: Matrix4.translationValues(animation.value*width, 0.0,0.0),
                    child: Container(
                        alignment: Alignment(0, 0.2),
                        color: Colors.white,
                        height: 90,
                        child: const Text(
                          'Get coaching',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 40
                          ),
                        ),

                      ),
                  ),
                  Transform(
                    transform: Matrix4.translationValues(animation.value*width*-1, 0.0,0.0),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(10, 90, 10, 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.grey
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(40, 15, 5, 10),
                                child: const Text(
                                  'You Have',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Quicksand',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(40, 40, 5, 25),
                                child: const Text(
                                  '206',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Quicksand',
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ],

                          ),
                          const SizedBox(width: 100,),
                          Container(
                            height: 70,
                            width: 125,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent[200]?.withOpacity(
                                    0.3),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: const Center(
                              child: Text(
                                'Buy more',
                                style: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Transform(
                transform: Matrix4.translationValues(delayedAnimation.value*width, 0.0, 0.0),
                child: Container(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'My Coatch',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'View Past sessions',
                        style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Transform(
                transform: Matrix4.translationValues(0.0,muchDelayedAnimation.value*height, 0.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 4,
                  shrinkWrap: true,
                  children: [
                    _buildCard('Yousef', 'Away', 'Jordan -Amman', 1),
                    _buildCard('Anas', 'Available', 'Jordan -Amman', 2),
                    _buildCard('Mohammad', 'Available', 'Jordan -Amman', 3),
                    _buildCard('Mohammad', 'Away', 'Jordan -Amman', 4),
                    _buildCard('Yaman', 'Available', 'Jordan -Amman', 5),
                    _buildCard('IEAN', 'Away', 'Jordan -Amman', 6)

                  ],
                ),
              ),

            ],
          )
      );
      }
    );
  }
  Widget _buildCard(String name, String status ,String info, int cardIndex){
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      elevation: 40,
      child: Column(
        children: [
          SizedBox(height: 8),
          //Picture
          Container(
            child: Center(
              child: Container(
                alignment: AlignmentDirectional.center,
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.green,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://th.bing.com/th/id/R.1a68ea0f27d2e20546ca8455d5809273?rik=rnnsSOtYnvIsFw&pid=ImgRaw&r=0&sres=1&sresct=1'
                        )
                    )
                ),
              ),
            ),
          ),
          const SizedBox(height: 8,),
          Container(
            child: Center(
              child: Text(
                status,
                style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            child: Center(
              child: Text(
                info,
                style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 34,
            width: 290,
            decoration: BoxDecoration(
              color: status=='Away'? Colors.grey : Colors.green,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
              ),
            ),
            child: Center(
              child: Text(
                'Request',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Quicksand',
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),

      margin: cardIndex.isEven?
      EdgeInsets.fromLTRB(10, 10, 25, 10) :
      EdgeInsets.fromLTRB(25 , 10, 10, 10),

    );

  }

}