import 'package:ciacitaku/pengaturan.dart';
import 'package:ciacitaku/penghargaan.dart';
import 'package:ciacitaku/unduhan.dart';
import 'package:flutter/material.dart';
import 'login_view.dart';
import 'main.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.home,
              text: 'Home',
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()))),
          _drawerItem(
              icon: Icons.account_box,
              text: 'Login',
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()))),
          _drawerItem(
              icon: Icons.settings_applications,
              text: 'Pengaturan akun',
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Pengaturan()))),
          _drawerItem(
              icon: Icons.receipt,
              text: 'Penghargaan',
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Penghargaan()))),
          _drawerItem(
              icon: Icons.download_sharp,
              text: 'Unduhan',
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Unduhan()))),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Labels",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          _drawerItem(
              icon: Icons.outbond,
              text: 'Keluar',
              onTap: () => print('Keluar')),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/orang2.jpg'), fit: BoxFit.cover),
    ),
    accountName: Text('Yogi Adam Firdaus'),
    accountEmail: Text('yogiadamf@gmail.com'),
  );
}

Widget _drawerItem({IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
