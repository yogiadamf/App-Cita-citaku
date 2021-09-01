import 'package:flutter/material.dart';
import 'home.dart';
import 'navigationDrawer.dart';
import 'pilihancita2.dart';

class Akhir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage(
                        "assets/backround.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 70.0,
              left: 15.0,
              height: 750,
              width: 400,
              child: Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new AssetImage("assets/baca1.png"),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 170),
                    child: Image.asset(
                      "assets/dokter.png",
                      height: 250,
                    ),
                  ),
                  Text(
                    "Sang Pahlawan Kesehatan",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Comic Sans MS",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  FlatButton(
                    padding: EdgeInsets.all(10),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Image.asset(
                      "assets/btnBeranda.png",
                      width: 200,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PilihanCita()));
                    },
                    child: Image.asset(
                      "assets/btnBacaLagi.png",
                      width: 200,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10.0,
              left: 0.0,
              right: 0.0,
              height: 90,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
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
                          "Penghargaan",
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
