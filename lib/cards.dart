import 'package:flutter/material.dart';
import 'package:mian/home.dart';
import 'package:mian/profile.dart';
import 'package:mian/signin.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCards(),
    );
  }
}

class MyCards extends StatelessWidget {
  const MyCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.blue,
        title: const Text(
          'Near by',
          style: TextStyle(
              fontFamily: 'Quicksands', fontSize: 30, color: Colors.black54),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,
              color: Colors.blueGrey, size: 20),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Profile()));
              },
              icon: const Icon(Icons.contacts_outlined),
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              left: MediaQuery.of(context).size.width * 0.17,
              top: MediaQuery.of(context).size.width * 0.17,
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black54)),
                child: const Image(
                  fit: BoxFit.fitHeight,
                  image: NetworkImage(
                      'https://th.bing.com/th/id/OIP.SIhBpZ_TKdCfd7SJK78_gQHaLI?pid=ImgDet&rs=1'),
                ),
              )),
        ],
      ),
    );
  }
}
