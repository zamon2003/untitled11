import 'package:flutter/material.dart';
import 'package:untitled11/pages/page1.dart';
import 'package:untitled11/pages/page2.dart';
import 'package:untitled11/pages/page3.dart';
import 'package:untitled11/pages/page4.dart';
import 'package:untitled11/pages/page5.dart';

class SideBar extends StatefulWidget {
  static const String id = 'sidebar';

  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 240,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/logo.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushReplacementNamed(context, Page1.id);
              },
              leading: Icon(
                Icons.star,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                'Popular Images',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushReplacementNamed(context, Page2.id);
              },
              leading: Icon(
                Icons.pets,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                'Animals',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushReplacementNamed(context, Page3.id);
              },
              leading: Icon(
                Icons.wb_sunny_sharp,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                'Weather',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            /////////////////////////////////////////////////////////////
            ListTile(
              onTap: () {
                Navigator.pushReplacementNamed(context, Page4.id);
              },
              leading: Icon(
                Icons.car_repair,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                'Cars',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            ListTile(),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              onTap: () {
                Navigator.pushReplacementNamed(context, Page5.id);
              },
              leading: Icon(
                Icons.help_outline,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                'About App',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
