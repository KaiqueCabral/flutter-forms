import 'package:flutter/material.dart';
import 'package:flutter_forms/pages/form-with-validation.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Forms with Validation"),
        ),
        drawer: getDrawer(context),
        body: HomeContainer());
  }

  Drawer getDrawer(BuildContext context) {
    _item(String title, IconData icon, String routeName) => ListTile(
          leading: Icon(
            icon,
            color: Colors.orangeAccent,
          ),
          title: Text(title),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed(routeName);
          },
        );

    ListView listView = ListView(
      children: <Widget>[
        DrawerHeader(
          child: Text("Hi!"),
          decoration: BoxDecoration(
            color: Colors.blue[100],
          ),
        ),
        _item(
            "Form with Validation", Icons.input, FormValidationPage.routeName),
      ],
    );

    return Drawer(
      child: listView,
      semanticLabel: "Menu",
      elevation: 16,
    );
  }
}

class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[50],
      child: Center(
        child: Text("Flutter Forms with Validation"),
      ),
    );
  }
}
