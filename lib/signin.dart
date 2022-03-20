import 'package:flutter/material.dart';
import 'signup.dart';
import 'home.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? screenWidth  = MediaQuery.of(context).size.width;
    double? screenHeight = MediaQuery.of(context).size.height;
//
    return Scaffold(
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
                padding: EdgeInsets.fromLTRB(screenWidth*0.1, screenWidth*0.02, screenWidth*0.1, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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

                    ),
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
                    const SizedBox(height: 5.0),
                    Container(
                      alignment: Alignment(1,0),
                      padding: EdgeInsets.only(top: 10,left: 20),
                      child:const InkWell(
                      child: Text(
                          'Forgot Password',
                        style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Quicksands',
                          decoration: TextDecoration.underline,
                          ),

                      ),
                      ),
                    ),
                    const SizedBox(height: 30.0),
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
                              'LOGIN',
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
                    const SizedBox(height: 20.0),
                    SizedBox(
                      height: 40.0,
                      width: screenWidth,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.blueGrey,

                        elevation: 5.0,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: GestureDetector(
                            onTap: (){},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Center(
                                  child: ImageIcon(AssetImage('assets/facebook.png')),
                                ),
                                Center(
                                child: Text(
                                  'Login with Facebook',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                  ),
                                ),
                                )


                              ],
                            ),

                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text(
                    'Don\'t have an account? ',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Quicksands',
                      color: Colors.black
                    ),

                  ),
                  TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()));
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.green,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                          fontFamily: 'Quicksands',
                          fontWeight: FontWeight.bold,
                        ),
                      ))

                ],

              )
            ]
          )
    );
  }
}
