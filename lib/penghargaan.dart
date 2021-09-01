import 'package:flutter/material.dart';
import 'navigationDrawer.dart';

class Penghargaan extends StatelessWidget {
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
              top: 60.0,
              height: 800,
              width: 435,
              child: Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("assets/baca2.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 50.0, top: 150.0),
                  padding: const EdgeInsets.all(10.0),
                  width: 330,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Cita-cita Dokter",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Comic Sans MS"),
                      ),
                      Text("Jawaban benar semua"),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50.0, top: 20.0),
                  padding: const EdgeInsets.all(10.0),
                  width: 330,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Cita-cita Guru",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Comic Sans MS"),
                      ),
                      Text("Jawaban benar semua"),
                    ],
                  ),
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
                      image: new AssetImage("assets/bar1.png"),
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
