import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled11/pages/home_page.dart';

class Page1 extends StatefulWidget {
  static const String id = 'page1';

  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  android_Dialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Home page'),
          content: Text('Are you sure to go to the home page?'),
          actions: [
            FlatButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, HomePage.id);
                },
                child: Text('OK')),
            FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'))
          ],
        );
      },
    );
  }

  ios_dialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Home page'),
          content: Text('Are you sure to go to the home page?'),
          actions: [
            CupertinoDialogAction(
              child: Text('OK'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoDialogAction(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: Icon(Icons.star),
        title: Text(
          'Popular Images',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                if (Platform.isAndroid) {
                  android_Dialog();
                } else if (Platform.isIOS) {
                  ios_dialog();
                }
              },
              icon: Icon(Icons.home)),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://img.fonwall.ru/o/2p/canada-moraine-lake-ozero-gory.jpg?route=mid&amp;h=750',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://data.whicdn.com/images/242084377/original.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://get.wallhere.com/photo/Hong-Kong-road-night-building-top-view-1053343.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://footiespot.com/wp-content/uploads/2018/02/Luka-Modric.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://wallpaper-mania.com/wp-content/uploads/2018/09/High_resolution_wallpaper_background_ID_77701677858.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://motaen.com/upload/resize/1440/900/upload/wallpapers/source/2013/06/25/13/02/36395/jIQiM0JCTP-a84.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://get.wallhere.com/photo/Brooklyn-Bridge-night-nyc-united-states-1087009.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://i.pinimg.com/originals/62/c5/fd/62c5fd8c47f95bfeaae4f1dd0b84d78e.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://www.iliketowastemytime.com/sites/default/files/nature-trail-forest-hd-wallpaper.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://image.winudf.com/v2/image/Y29tLlRpZ2VybGl2ZXdhbGxwYXBlcl9zY3JlZW5fNV8xNTMwMTQ2MTU3XzA5Mw/screen-5.jpg?fakeurl=1&type=.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
