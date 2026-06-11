import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Drawer',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const HalamanAwal(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HalamanAwal extends StatefulWidget {
  const HalamanAwal({super.key});

  @override
  State<HalamanAwal> createState() => _HalamanAwalState();
}

class _HalamanAwalState extends State<HalamanAwal> {
  GlobalKey<ScaffoldState> kunciScaffold = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: kunciScaffold,
      drawer: Drawer(
        width: 250,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://wall-mural-shop.com/cdn/shop/files/4baf49895a174091db1f893c8c282720.jpg?v=1746089846&width=2700',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text('User dari login'),
                  Text('Email: use@email.com'),
                ],
              ),
            ),
            ListTile(
              title: Text('Beranda'),
              leading: Icon(Icons.home),
              onTap: () {},
            ),
            ListTile(
              title: Text('Profil'),
              leading: Icon(Icons.person),
              onTap: () {},
            ),
            Divider(),
            ExpansionTile(
              title: Text('Daftar Tugas'),
              children: [
                ListTile(
                  title: Text('Tugas Listview'),
                  leading: Icon(Icons.edit),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Tugas Gridview'),
                  leading: Icon(Icons.edit_document),
                  onTap: () {},
                ),
              ],
            ),
            Divider(),
            ListTile(
              title: Text('Pengaturan'),
              leading: Icon(Icons.settings),
              onTap: () {},
            ),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.logout, color: Colors.blue),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(color: Colors.red),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            if (kunciScaffold.currentState != null) {
                              kunciScaffold.currentState!.openDrawer();
                            }
                          },
                          icon: Icon(Icons.menu),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
