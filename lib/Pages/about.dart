import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:woft_1st_project/screens/order_placed_screen.dart';
import 'tabview.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 62, 151, 65),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4.0,
                    ),
                  ],
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://raw.githubusercontent.com/Aminadab23/task1assets/master/veggiesback.png'),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image.network(
                      'https://raw.githubusercontent.com/Aminadab23/task1assets/master/profilepic.png',
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.person_3_rounded,
                color: Colors.white70,
              ),
              title: const Text(
                'My profile',
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
              onTap: () {
                //           Navigator.push(
                // context,
                // MaterialPageRoute(builder: (context) => const MyProfile()),
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.shopping_bag_rounded,
                color: Colors.white70,
              ),
              title: const Text(
                'Shop',
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
              onTap: () {
                //           Navigator.push(
                // context,
                // MaterialPageRoute(builder: (context) => const Shop()),
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.shopping_cart_checkout_rounded,
                color: Colors.white70,
              ),
              title: const Text(
                'My Cart',
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
              onTap: () {
                           Navigator.push(
                 context,
                MaterialPageRoute(builder: (context) => const OrderPlacedScreen()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.info_rounded,
                color: Colors.white70,
              ),
              title: const Text(
                'About us',
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout_rounded,
                color: Colors.white70,
              ),
              title: const Text(
                'Logout',
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
              onTap: () {
                //           Navigator.push(
                // context,
                // MaterialPageRoute(builder: (context) => const Logout()),
              },
            ),
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 2),
        child: Column(
          children: [
            Stack(children: [
              Image.network(
                  'https://raw.githubusercontent.com/Aminadab23/task1assets/master/aboutimage.png'),
              Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(left: 20, top: 60),
                    //   child: Image.network(
                    //       'https://raw.githubusercontent.com/Aminadab23/task1assets/master/Vector.png'),
                    // ),
                    child: const Icon(Icons.arrow_back_ios_new_outlined,size: 30,weight: 30, color: Colors.white70,),
                    ),
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                  );
                },
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 170),
                  child: Image.network(
                      'https://raw.githubusercontent.com/Aminadab23/task1assets/master/vegansticky.png'),
                ),
              )
            ]),
            Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Center(
                  child: Column(children: [
                    Text(
                      "About us",
                      style:
                          TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "lorem ipsom dolor",
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.black26),
                    )
                  ]),
                )),
            const TheTabs()
          ],
        ),
      ),
    );
  }
}
