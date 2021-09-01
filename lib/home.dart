import 'package:flutter/material.dart';
import 'pilihancita2.dart';
import 'navigationDrawer.dart';
import 'ad_manager.dart';
import 'package:firebase_admob/firebase_admob.dart';

class Home extends StatefulWidget {
  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<Home> {
  BannerAd _bannerAd;

  @override
  void initState() {
    super.initState();

    _bannerAd = BannerAd(
      adUnitId: AdManager.bannerAdUnitId,
      size: AdSize.banner,
    );
    _loadBannerAd();
  }

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
            CustomScrollView(
              primary: false,
              slivers: <Widget>[
                SliverPadding(
                  padding: EdgeInsets.only(top: 100),
                  sliver: SliverGrid.count(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8),
                        child: FlatButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              child: new AlertDialog(
                                title: new Text(
                                  "Cita-Cita Dokter",
                                  style: TextStyle(fontSize: 25),
                                  textAlign: TextAlign.center,
                                ),
                                content: SingleChildScrollView(
                                  child: ListBody(
                                    children: <Widget>[
                                      Image.asset(
                                        "assets/dokter.png",
                                      ),
                                      Text(
                                          '     Dokter merupakan profesi yang sangat mulia karena mereka terkait erat dengan pengobatan, perawatan dan penyelamatan pada orang yang sakit.',
                                          textAlign: TextAlign.justify),
                                    ],
                                  ),
                                ),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Image.asset(
                                      "assets/btnDownload.png",
                                      height: 30,
                                    ),
                                    onPressed: () {},
                                  ),
                                  FlatButton(
                                    child: new Image.asset(
                                      "assets/btnBaca.png",
                                      height: 30,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PilihanCita()));
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                          child: Image.asset(
                            "assets/dokter.png",
                            width: 180,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PilihanCita()));
                          },
                          child: Image.asset(
                            "assets/dokter.png",
                            width: 180,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PilihanCita()));
                          },
                          child: Image.asset(
                            "assets/dokter.png",
                            width: 180,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PilihanCita()));
                          },
                          child: Image.asset(
                            "assets/dokter.png",
                            width: 180,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PilihanCita()));
                          },
                          child: Image.asset(
                            "assets/dokter.png",
                            width: 180,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PilihanCita()));
                          },
                          child: Image.asset(
                            "assets/dokter.png",
                            width: 180,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PilihanCita()));
                          },
                          child: Image.asset(
                            "assets/dokter.png",
                            width: 180,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PilihanCita()));
                          },
                          child: Image.asset(
                            "assets/dokter.png",
                            width: 180,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              height: 70,
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
                          "Cita-Citaku",
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

  void _loadBannerAd() {
    _bannerAd
      ..load()
      ..show(anchorType: AnchorType.bottom);
  }

  void dispose() {
    _bannerAd?.dispose();

    super.dispose();
  }
}
