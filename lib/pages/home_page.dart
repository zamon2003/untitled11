import 'package:flutter/material.dart';
import 'package:untitled11/pages/sidebar.dart';

class HomePage extends StatefulWidget {
  static const String id = 'homePage';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: SideBar(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Images',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://a.d-cd.net/c74602ds-1920.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://jooinn.com/images/grizzly-bears-3.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://www.onetwotrip.com/ru/blog/wp-content/uploads/2016/10/caribbean-island.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://lubopitnie.ru/wp-content/uploads/2018/03/kanon-1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://agw.ru/wp-content/uploads/2014/07/uzbekistan_fruits_watermwlon.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://w-dog.ru/wallpapers/1/5/448277296581784/avtomobil-chevrolet-korvet-stingray-twin-turbo-s7-2014-shevrolet-mashina-krasnyj-avto-sportkar-tyuning-zakat.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://visaapp.ru/wp-content/uploads/2018/11/Podvodnyj-mir-Krasnogo-morya.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://phonoteka.org/uploads/posts/2021-06/1624306465_31-phonoteka_org-p-novogodnie-oboi-snegovik-krasivo-36.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://fastmb.ru/uploads/posts/2017-07/1499201341_novyy-zaryazhennyy-sportkar-dodge-viper-2017.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://klkfavorit.ru/wp-content/uploads/8/8/e/88ef58c190bcff61b51fa15811327a8a.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://proprikol.ru/wp-content/uploads/2020/10/kartinki-ogon-i-voda-14.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://qpic.ws/images/23zkz.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://i.pinimg.com/originals/2c/65/10/2c6510abc7619652efa1a7ef65a1f40b.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://ribalych.ru/wp-content/uploads/2013/12/7230.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 300,
                child: Image.network(
                  'https://avatars.mds.yandex.net/get-zen_doc/1588093/pub_5d8074f698fe7900ac84aca8_5d8084d9a660d700ae52af35/scale_1200',
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