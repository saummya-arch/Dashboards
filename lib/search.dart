

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

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
     return Container(
       alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            width: 360,
            height: 47,
            child: FlatButton(
              color: Colors.white,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: BorderSide(color: Colors.black45)
            ),
            onPressed: _launchURL,
           child: Text('Search', textAlign: TextAlign.left, textDirection: TextDirection.ltr, style: TextStyle(color: Colors.grey),
           ),
         ),
          ),
        ],
      ),
     );
  //       Container(
  //       alignment: Alignment.bottomCenter,
  //       width: 250,
  //       height: 50,
  //       decoration: BoxDecoration(
  //         color: Colors.white,
  //         borderRadius: BorderRadius.circular(12),
  //       ),
  //       child:Row(
  //     crossAxisAlignment: CrossAxisAlignment.end,
  //     children: <Widget>[
  //      Expanded(
  //        child: Image.asset('assets/GLogo.png',
  //        width: 20,height: 20,),
  //      ),
  //      Expanded( child : TextField( controller: _controller, 
  //     // color: Colors.grey,
  //     decoration: InputDecoration(
  //       labelText: 'Search',
  //     ),
  //      onSubmitted:(String value)async {
  //       url = 'https://www.google.com/search?q="$value"';
  //       if (await canLaunch(url)) {
  //       await launch(url);
  //       } else {
  //       throw 'Could not launch $url';
  //     }
  //   } ,
  //   ), 
  //   )
  // ],
  //   ), 
  //     );
  
  }
}
_launchURL() async {
  const url = 'https://www.google.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
    }