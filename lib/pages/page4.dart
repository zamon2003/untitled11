import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class Page4 extends StatefulWidget {
  static const String id = 'Page4';

  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
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
        leading: Icon(Icons.car_repair),
        title: Text(
          'Cars',
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
                  'https://i.pinimg.com/736x/11/1a/9e/111a9e6f0d3d644aad6636e1d11fa854.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://avatars.mds.yandex.net/get-zen_doc/42056/pub_5dc597c02fb64b4381e28f1e_5dc5985a9f1ed62dfce9fd1a/scale_1200',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://i.ytimg.com/vi/2GZ0s5JA68w/maxresdefault.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://apollo-olx.cdnvideo.ru/v1/files/ee2y3of56h47-UZ/image;s=1000x700',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://oformi.net/uploads/gallery/main/244/wallpapers_-3.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://avatars.mds.yandex.net/get-autoru-vos/1943631/82a15dabf11a03a92960f57f504ab0e3/1200x900n',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://image.winudf.com/v2/image/Y29tLkhvbWVMYW5kU3R1ZGlvcy5DYXJzLkZhc3QuRmFzdENhci5TcG9ydHNDYXIuUmFjaW5nQ2FyLkNvb2xDYXIuRXhwZW5zaXZlQ2FyLlNwb3J0c0NhclBvcnNjaGVXYWxscGFwZXJfc2NyZWVuXzEyXzE1MzQwNjY0MTFfMDk1/screen-12.jpg?fakeurl=1&type=.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://w-dog.ru/wallpapers/1/6/446086563767444/lada-zhiguli-vaz-krasnaya-shoxa-retro-klassika-legenda-oboi-fon.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://wallpaper-house.com/data/out/12/wallpaper2you_538653.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://avatars.mds.yandex.net/get-autoru-vos/2106500/2be5b680bbd5eadc82cfa77be50614c7/1200x900n',
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
