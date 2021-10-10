import 'package:flutter/material.dart';

import 'Hikaye.dart';
import 'gonderi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        leading: IconButton(
          icon: Icon(
            Icons.whatshot_rounded,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Center(
          child: Text(
            "Sosyal Medya Arayüz",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.waves_rounded,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
              height: 130.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  hikaye(foto:  "https://cdn.pixabay.com/photo/2021/05/22/01/47/mountains-6272362_960_720.jpg", isim: "ahmet",),
                  hikaye(foto:  "https://cdn.pixabay.com/photo/2021/05/10/14/15/corset-6243486__340.jpg", isim: "can",),
                  hikaye(foto:  "https://cdn.pixabay.com/photo/2015/09/02/12/39/woman-918583__340.jpg", isim: "ayşe",),
                  hikaye(foto:  "https://cdn.pixabay.com/photo/2017/04/05/10/45/girl-2204622__340.jpg", isim: "pelin",),
                  hikaye(foto:  "https://cdn.pixabay.com/photo/2021/06/15/16/11/man-6339003__340.jpg", isim: "ali",),
                  hikaye(foto:  "https://cdn.pixabay.com/photo/2015/09/02/12/58/woman-918788__340.jpg", isim: "gizem",),
                ],
              )),
          Gonderi(
              "https://cdn.pixabay.com/photo/2021/09/14/19/29/butterfly-6624801__340.jpg",
              "Fatma",
              "https://cdn.pixabay.com/photo/2020/07/30/10/26/asian-woman-5450041__340.jpg",
          "HERKESE SELAM"),
          Gonderi(
              "https://cdn.pixabay.com/photo/2021/09/05/10/50/city-6599328__340.jpg",
              "Mehmet",
              "https://cdn.pixabay.com/photo/2021/08/23/21/12/duckling-6568845__340.jpg",
          "Günaydın"),
          Gonderi(
              "https://cdn.pixabay.com/photo/2021/05/22/01/47/mountains-6272362_960_720.jpg",
              "Ahmet",
              "https://cdn.pixabay.com/photo/2018/07/29/23/16/football-3571336__480.jpg",
          "Fenerin maçı var"),
          Gonderi(
              "https://cdn.pixabay.com/photo/2021/09/26/14/37/milky-way-6657951__340.jpg",
              "Ayşe",
              "https://cdn.pixabay.com/photo/2020/11/29/04/02/hand-5786371__340.jpg","Kanalıma abone olun"),
          Gonderi(
              "https://cdn.pixabay.com/photo/2021/09/05/10/50/city-6599328__340.jpg",
              "Mehmet",
              "https://cdn.pixabay.com/photo/2019/10/19/12/22/hot-air-balloon-4561273__340.jpg","Bunu çok seviyorum"),
        ],
      ),
    );
  }

}
