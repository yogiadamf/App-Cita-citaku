import 'package:flutter/material.dart';
import 'navigationDrawer.dart';

class Pengaturan extends StatelessWidget {
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
            Container(
              padding: EdgeInsets.only(top: 100),
              child: Card(
                color: Colors.pink[50],
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(
                        Icons.account_box,
                        size: 30,
                      ),
                      title: Text("Nama"),
                      subtitle: Text("Yogi Adam Firdaus"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('Edit'),
                          onPressed: () {},
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 200),
              child: Card(
                color: Colors.pink[50],
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(
                        Icons.email,
                        size: 30,
                      ),
                      title: Text("Email"),
                      subtitle: Text("yogiadamf@gmail.com"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('Edit'),
                          onPressed: () {},
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 300),
              child: Card(
                color: Colors.pink[50],
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(
                        Icons.vpn_key,
                        size: 30,
                      ),
                      title: Text("Password"),
                      subtitle: Text("*********"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('Edit'),
                          onPressed: () {},
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 10.0,
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
                          "Pengaturan Akun",
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
