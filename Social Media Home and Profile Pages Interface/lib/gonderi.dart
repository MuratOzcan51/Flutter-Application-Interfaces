import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Padding Gonderi(String resim, String isim, String gonderi, String aciklama) {
  return Padding(
    padding: const EdgeInsets.all(6.0),
    child: Material(
      elevation: 5.0,
      child: InkWell(
        child: Container(
          height: 470.0,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          height: 80.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      resim),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            isim,
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "10 dakika önce",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                  IconButton(
                      icon: Icon(Icons.more_vert), onPressed: () {})
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(aciklama,  style: TextStyle(
                    color: Colors.black, fontSize: 16.0)),
              ),

              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Container(
                  height: 250.0,
                  width: 370.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              gonderi),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.grey,
                        ),
                        label: Text("Paylaş",
                            style: TextStyle(
                                color: Colors.grey, fontWeight: FontWeight.bold))),
                    FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.comment,
                          color: Colors.grey,
                        ),
                        label: Text("Paylaş",
                            style: TextStyle(
                                color: Colors.grey, fontWeight: FontWeight.bold))),
                    FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          color: Colors.grey,
                        ),
                        label: Text("Paylaş",
                            style: TextStyle(
                                color: Colors.grey, fontWeight: FontWeight.bold)))
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    ),
  );
}