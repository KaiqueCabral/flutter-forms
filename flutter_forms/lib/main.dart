import 'package:flutter/material.dart';
import 'package:flutter_forms/home.dart';
import 'package:flutter_forms/pages/form-with-validation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        FormValidationPage.routeName: (BuildContext context) =>
            FormValidationPage(),
      },
    );
  }
}
