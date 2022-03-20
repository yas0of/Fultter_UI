import 'package:flutter/material.dart';
import 'home.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? screenWidth  = MediaQuery.of(context).size.width;
    double? screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: const FlutterLogo(
            size: 20.0,
          ),
          elevation: 5.0,
          centerTitle: true,
          backgroundColor: Colors.white10,
        ),

        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(screenWidth*0.2, screenWidth*0.1, 30, 10),
                    child: Text(
                        ' ITG',
                        style : TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth*0.07,
                            fontFamily: 'Quicksand'
                        )
                    ),
                  ) ,
                  Container(
                    padding: EdgeInsets.fromLTRB(screenWidth*0.2, screenWidth*0.2, 30, 10),
                    child: Text(
                        'Hello',
                        style : TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth * 0.1,
                            fontFamily: 'Quicksand'
                        )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(screenWidth*0.44, screenWidth*0.2, 30, 10),
                    child: Text(
                        '.',
                        style : TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth*0.1,
                            fontFamily: 'Quicksand'
                        )
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(screenWidth*0.1, screenWidth*0.02, screenWidth*0.1, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextField(

                      decoration: InputDecoration(

                          labelText: 'first name',
                          labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green)
                          )
                      ),

                    ),
                    const SizedBox(width: 10.0),
                    const TextField(
                          decoration: InputDecoration(
                              labelText: 'last name',
                              labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green)
                              )
                          ),

                        ),
                    const TextField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green)
                          )
                      ),

                    ),//Email
                    const TextField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green)
                          )
                      ),

                    ),
                    const TextField(
                      decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green)
                          )
                      ),

                    ),
                    const SizedBox(height: 10.0),
                    SizedBox(
                      height: 40.0,
                      width: screenWidth,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.blueGrey,
                        color: Colors.green,
                        elevation: 10.0,
                        child: GestureDetector(

                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));

                          },
                          child: Container(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: const Text(
                              'Sign Up',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]
        )
    );
  }
}
