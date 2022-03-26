import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class Page3 extends StatefulWidget {
  static const String id = 'Page3';

  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
        leading: Icon(Icons.wb_sunny),
        title: Text(
          'Weather',
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
                  'https://getwallpapers.com/wallpaper/full/2/1/6/886979-thunderstorm-wallpaper-1920x1080-for-mobile-hd.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://images6.alphacoders.com/459/thumb-1920-459669.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://www.wallpaperflare.com/static/408/526/418/nature-rainbows-road-rainbow-wallpaper.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://get.wallhere.com/photo/sunlight-landscape-nature-grass-sky-field-storm-morning-wind-horizon-thunder-cloud-weather-grassland-agriculture-meadow-plain-prairie-rural-area-computer-wallpaper-grass-family-229621.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://get.wallhere.com/photo/trees-landscape-nature-building-plants-field-clouds-lightning-storm-wind-horizon-atmosphere-thunder-supercell-nature-cloud-weather-thunderstorm-plain-1920x1080-px-prairie-572917.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://getwallpapers.com/wallpaper/full/9/2/3/463516.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://cdn.wallpapersafari.com/8/10/atRQlj.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://get.wallhere.com/photo/sea-sky-storm-coast-wind-horizon-atmosphere-cloud-weather-ocean-wave-1366x768-px-computer-wallpaper-geological-phenomenon-wind-wave-arctic-ocean-General-537196.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://avondhupress.ie/wp-content/uploads/2016/03/Rainfall-Downpour.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://rsute.ru/wp-content/uploads/2021/02/zima-sneg-devushka-nastroenie.jpg',
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
