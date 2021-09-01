import 'package:flutter/material.dart';
import 'navigationDrawer.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 60.0,
              height: 800,
              width: 435,
              child: Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("assets/baca1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 120, left: 45),
                      alignment: AlignmentDirectional.topStart,
                      child: Image.asset(
                        "assets/citaDokter.png",
                        width: 150,
                      ),
                    ),
                    Text(
                      'Belajar Mengenal Profesi Dokter',
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: "Comic Sans MS",
                          height: 2.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: Column(
                        children: [
                          Text(
                            '   Dokter adalah profesi yang bergerak dibidang kesehatan. Dokter bertugs untuk membantu menyembuhkan seseorang yang sedang sakit, sehingga pasien tersebut sembuh dan dapat beraktifitaas seperti semula.Sebelum mengenal lebih jauh profesi dokter, Ayo mari kita lakukan uji coba seberapa jauh kamu mengetahui profesi dokter, dengan menjawab pertanyaan berikut.',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Comic Sans MS",
                                height: 2.0),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            '   Sebelum mengenal lebih jauh profesi dokter, Ayo mari kita lakukan uji coba seberapa jauh kamu mengetahui profesi dokter, dengan menjawab pertanyaan berikut.',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Comic Sans MS",
                                height: 2.0),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "1. Manakah alat di bawah ini yang biasa digunakan oleh dokter ?",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Comic Sans MS",
                                height: 2.0),
                          ),
                          Row(
                            children: <Widget>[
                              FlatButton(
                                  padding: EdgeInsets.only(left: 20),
                                  child: new Image.asset(
                                    "assets/stetoskop.png",
                                    width: 150,
                                  ),
                                  onPressed: null),
                              FlatButton(
                                  child: new Image.asset(
                                    "assets/teleskop.png",
                                    width: 150,
                                  ),
                                  onPressed: null),
                            ],
                          ),
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text("Next"),
                      color: Colors.green,
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              height: 90,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage("assets/bar.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.symmetric(horizontal: 35.0),
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DrawerWidget()));
                        },
                      ),
                      Expanded(
                        child: Text(
                          "Cita-Cita Menjadi Dokter",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      IconButton(
                        padding: EdgeInsets.symmetric(horizontal: 35),
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          print("your menu action here");
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
