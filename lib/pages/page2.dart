import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class Page2 extends StatefulWidget {
  static const String id = 'page2';

  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
        leading: Icon(Icons.pets),
        title: Text(
          'Animals',
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
                  'https://wallpapershome.ru/images/wallpapers/olen-7680x4320-milie-jivotnie-les-4575.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://get.wallhere.com/photo/flowers-grass-squirrel-wildlife-chipmunk-animal-flower-fauna-mammal-possum-vertebrate-marsupial-opossum-642380.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://cdn.oboi7.com/16652751f2c27fbcc9aa314f2d83d9646c3428de/zhivotnye-slony-slonenok-rebenok-zhivotnyh.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2014/10/18/22/26/squirrel-493790_1280.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://www.culture.ru/storage/images/5abe06158db66bde4106e575236b96fb/c6657d9cd089adbd77c2eeadccca39ec.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://funart.pro/uploads/posts/2021-04/1618023303_9-p-oboi-zhivotnii-mir-afriki-9.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://get.wallhere.com/photo/1920x1200-px-animals-tiger-751200.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://get.wallhere.com/photo/animals-baby-animals-red-panda-bear-fauna-mammal-1600x1200-px-vertebrate-dog-breed-group-giant-panda-729726.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://i.pinimg.com/originals/6d/72/8a/6d728acb2c08de50d0f20a95386882a1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://wallpaperscave.com/images/original/18/05-02/animals-big-cats-lion-47157.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
