import 'package:dashboardapp/advancedtools.dart';
import 'package:dashboardapp/corona.dart';
import 'package:dashboardapp/recommended.dart';
//import 'package:dashboardapp/search.dart';
import 'package:dashboardapp/second.dart';
import 'package:dashboardapp/shortcut.dart';
import 'package:dashboardapp/weather.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState(){
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    //Padding(padding: const EdgeInsets.only(top: 100),);
    return ListView(
        padding: const EdgeInsets.only(top: 35),
      children: <Widget>[
        Weather(),
      Padding(padding: const EdgeInsets.all(2.5)),
        Corona(),
         Padding(padding: const EdgeInsets.all(2.5)) ,
        Shortcut(),
    Padding(padding: const EdgeInsets.all(2.5)),
        Recommended(),
         Padding(padding: const EdgeInsets.all(2.5)),
        AdvancedTools(),
         Padding(padding: const EdgeInsets.all(2.5)),
         Second(),
      ],
     );
      
  }
}