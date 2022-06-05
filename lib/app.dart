import 'package:flutter/material.dart';
import 'package:getx_flutter_app/views/shapping_page.dart';


class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purpleAccent
      ),
      title: "Getx App ",
      home: ShoppingPage(),
    );
  }
}