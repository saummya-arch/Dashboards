import 'package:dashboardapp/search.dart';
import 'package:flutter/material.dart';


class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Container(
       width: 360.0,
     height: 100.0,
   // margin: const EdgeInsets.all(10.0),
    // padding: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.0),
          bottomRight: Radius.circular(12.0),
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),)
        ),
        child: Row(
         // Padding(padding: const EdgeInsets.only(right: 10,bottom: 10),),
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(right: 24,top: 20),),
            Stack(
              children: <Widget>[
                Container(
                   width: 360.0,
                   height: 56.0,
                   decoration: BoxDecoration(
                     color: Colors.black,
                     borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(25.0),
                     bottomRight: Radius.circular(25.0),
                     topLeft: Radius.circular(25.0),
                     topRight: Radius.circular(25.0),)
                   ),
                   child: Search(),
                ),
              ],
            ),
          ],
        ),
    );
  }
}