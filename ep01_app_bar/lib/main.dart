import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: ListView(children: [
          UserAccountsDrawerHeader(
            accountName: Text("Thu Ra"),
            accountEmail: Text("nyeinthura57@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.pink,
              child: Text("N"),
            ),
          ),
          ListTile(
            title: Text("Page 1"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            title: Text("Page 2"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            title: Text("Page 3"),
            trailing: Icon(Icons.close),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ]),
      ),
    ));
  }
}
