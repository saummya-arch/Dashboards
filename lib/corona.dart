import 'package:flutter/material.dart';

class Corona extends StatefulWidget {
  @override
  _CoronaState createState() => _CoronaState();
}

class _CoronaState extends State<Corona> {

  final List<String> entries = <String>['Corona'];


  @override
  Widget build(BuildContext context) {
   return  Container(
     width: 350.0,
     height: 70.0,
   // margin: const EdgeInsets.all(10.0),
    // padding: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.0),
          bottomRight: Radius.circular(12.0),
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),)
        ),
    child: Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(padding: const EdgeInsets.only(left: 5.0),),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("Coronavirus(COVID -19)",
            style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              decoration: TextDecoration.none),
            
            ),
            Padding(padding: EdgeInsets.all(3.0),),
            Text("Get the latest information",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,fontSize: 10,
                               decoration: TextDecoration.none),
            ),
          ],
          ),
       Padding(padding: const EdgeInsets.only(right: 0.3),),
       Column(
            children: <Widget>[
              Icon(
                Icons.close,
                color: Colors.black,
                size: 17,
              ),
              Padding(padding: EdgeInsets.all(10.0),),
              SizedBox(
                width: 25,
                height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[                                   //zyada//
                  RaisedButton(
                     color: Colors.blue[300],
                     child: Text("C",
                     style: TextStyle(fontSize: 5,color: Colors.white),),
                     onPressed: (){},),
                ],
              )
              )
            ],)
      ],
    ),
  );
  }
}

