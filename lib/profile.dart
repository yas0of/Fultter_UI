import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            child: Container(color: Colors.black26),
            clipper: getCliper(),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 4),
                Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://th.bing.com/th/id/OIP.Fu1Gb58s85332HwlLq65WgHaIq?pid=ImgDet&rs=1'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(100.2)),
                      boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 10)
                      ]),
                ),
                const SizedBox(height: 30.0),
                const Text('Yousef Habbeh',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MonteSerrate',
                        fontSize: 30)),
                const Text('Subscribe guys',
                    style: TextStyle(fontFamily: 'MonteSerrate', fontSize: 20)),
                const SizedBox(height: 20.0),
                SizedBox(
                  height: 30,
                  width: 120,
                  child: Material(
                    elevation: 7,
                    color: Colors.green,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    shadowColor: Colors.grey,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Center(
                        child: Text(
                          'Edit Name',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'MonteSerrate',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  height: 30,
                  width: 120,
                  child: Material(
                    elevation: 7,
                    color: Colors.red,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    shadowColor: Colors.grey,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Center(
                        child: Text(
                          'Log Out',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'MonteSerrate',
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class getCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height / 1.9);
    path.lineTo(size.width * 2, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
