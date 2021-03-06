import 'package:flutter/material.dart';
// EndDrawer reverse direction of Drawer

class DrawerEndDrawer1 extends StatefulWidget {
  @override
  _DrawerEndDrawer1State createState() => _DrawerEndDrawer1State();
}

class _DrawerEndDrawer1State extends State<DrawerEndDrawer1> {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.red[200],
        title: Text('Drawer _ EndDrawer'),
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {},
        // ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
          IconButton(onPressed: () {}, icon: Icon(Icons.alarm))
        ],
      ),
      drawerScrimColor: Colors.red[200]!.withOpacity(0.2),
      drawer: Drawer(
        child: Center(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.green[200],
                    child: Text(
                      'H',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  accountName: Text('name'),
                  accountEmail: Text('name@gmail.com')),
              ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
                onTap: () {},
              ),
              ListTile(
                title: Text('Help'),
                leading: Icon(Icons.help),
                onTap: () {},
              ),
              ListTile(
                title: Text('About'),
                leading: Icon(Icons.add_a_photo_rounded),
                onTap: () {},
              ),
              ListTile(
                title: Text('Contact'),
                leading: Icon(Icons.analytics),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            child: Text('Click to show the drawer'),
            style: ElevatedButton.styleFrom(primary: Colors.red[200]),
          ),
        ),
      ),
    );
  }
}
