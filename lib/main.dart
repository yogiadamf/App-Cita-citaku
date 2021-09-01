import 'package:flutter/material.dart';
import 'home.dart';
import 'navigationDrawer.dart';
import 'ad_manager.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() {
  runApp(new MaterialApp(
    title: "Cita-citaku",
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<void>(
        future: _initAdMob(),
        builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
          List<Widget> children = <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Stack(children: <Widget>[
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            padding: EdgeInsets.only(top: 750, left: 300),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            },
                            child: Image.asset(
                              "assets/btnAyo.png",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  Positioned(
                    top: 7.0,
                    left: 0.0,
                    right: 0.0,
                    height: 90,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
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
                                "Cita-Citaku",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
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
          ];
          return Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage(
                    "assets/backroundawal.png",
                  ),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: children,
            ),
          );
        },
      ),
    );
  }

  Future<void> _initAdMob() {
    return FirebaseAdMob.instance.initialize(appId: AdManager.appId);
  }
}
