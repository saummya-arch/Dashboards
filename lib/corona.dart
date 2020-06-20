import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Corona extends StatefulWidget {
  @override
  _CoronaState createState() => _CoronaState();
}

class _CoronaState extends State<Corona> {

  //final List<String> entries = <String>['Corona'];
  
TextEditingController _controller;
String url = '';

@override
void initState() {
  super.initState();
  _controller = TextEditingController();
}

@override
void dispose() {
  _controller.dispose();
  super.dispose();
}


  @override
  Widget build(BuildContext context) {
  return  
  // Container(
  //    width: 360.0,
  //    height: 150.0,
  //  // margin: const EdgeInsets.all(10.0),
  //   // padding: const EdgeInsets.all(10.0),
  //   decoration: BoxDecoration(
  //         color: Colors.blue,
  //         borderRadius: BorderRadius.only(
  //         bottomLeft: Radius.circular(12.0),
  //         bottomRight: Radius.circular(12.0),
  //         topLeft: Radius.circular(12.0),
  //         topRight: Radius.circular(12.0),)
  //       ),
     Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(
          width: 410,
          height: 130,
          child: RaisedButton(
            color: Colors.green[600],
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.black45)
            ),
            onPressed: () => _launchURL(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("Coronavirus(COVID -19)",
                     style: TextStyle(color: Colors.white,
                     fontWeight: FontWeight.bold,
                     fontSize: 20,
                     decoration: TextDecoration.none),
                    ),
                    Padding(padding: EdgeInsets.all(3.0),),
               Text("Get the latest information",
               textAlign: TextAlign.left,
               style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,fontSize: 13,
                    decoration: TextDecoration.none),
             ),
              ],
            ),  
          ),
        ),
       ],
       );
  //     ];
  //   );
  // );
  }
}

_launchURL() async {
  const url = 'https://www.mygov.in/covid-19';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
    }
