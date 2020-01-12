import 'package:amanwebsite/about.dart';
import 'package:amanwebsite/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: pages(),
    );
  }
}


class pages extends StatefulWidget {
  @override
  _pagesState createState() => _pagesState();
}

class _pagesState extends State<pages> {
  List<Widget> mypages=[MyHomePage(),About()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageView.builder(
        scrollDirection: Axis.vertical,

        controller: PageController(
          initialPage: 0,
            ),
        itemBuilder: (context,position)=>mypages[position],
        itemCount: mypages.length,
      ),
    );
  }
}




//
