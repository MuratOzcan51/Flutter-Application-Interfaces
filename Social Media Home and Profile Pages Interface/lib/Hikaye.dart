
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myucarakgelsin/profil.dart';

class hikaye extends StatelessWidget {
  final String foto;
  final String isim;

  const hikaye({Key key, this.foto, this.isim}) : super(key: key);

  @override
  Widget build(BuildContext context) {


      return  Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Stack(
              children: [
                Material(

                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ProfilSayfasi(
                        isims: isim,
                        profil: foto,

                      )));
                    },
                    child: Container(
                      height: 80.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          image: DecorationImage(
                              image: NetworkImage(foto), fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Positioned(
                  top: 0.0,
                  right: 0.0,
                  child: Container(
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.green),
                  ),
                ),
              ],

            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              isim,
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            )
          ],
        ),
      );
    }
  }

