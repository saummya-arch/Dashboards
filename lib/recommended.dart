import 'package:flutter/material.dart';

class Recommended extends StatefulWidget {
  @override
  _RecommendedState createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
    return Container(
   // margin: const EdgeInsets.all(10.0),
   // color: Colors.greenAccent,
    width: 430.0,
    height: 220.0,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(12.0),
    bottomRight: Radius.circular(12.0),
    topLeft: Radius.circular(12.0),
    topRight: Radius.circular(12.0),
    ),
    color: Colors.greenAccent,
  ),
  child: Column(
   children: <Widget>[
     Row(
       mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(padding: const EdgeInsets.only(right: 5,top: 10),),
            Column(
              children: <Widget>[                                  //circular round krrna hai//
                Image.asset('assets/recommendation1.png',
                width: 15,height: 15,
                ),
              ],
            ),
            Padding(padding: const EdgeInsets.only(right: 5,top: 10),),
            Text("Recommended",style: TextStyle(color: Colors.black, fontSize: 15,
            decoration: TextDecoration.none),),
          ], 
     ),
     Padding(padding: const EdgeInsets.all(10),),
          SizedBox(
                height: 90,
                child: GridView.count(
                              padding: const EdgeInsets.all(6),
                              crossAxisSpacing: 55,
                              mainAxisSpacing: 2,
                              crossAxisCount: 5,
                              children: <Widget>[
                                      SizedBox(
                                        width: 60,
                                        height: 60,
                                        child: Column(
                                          verticalDirection: VerticalDirection.down,
                                          children: <Widget>[
                                            CircleAvatar(
                                            child:
                                            Image.asset('assets/hotstar.png'),
                                          ),
                                          Padding(padding: const EdgeInsets.only(bottom: 4.0),
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Container(
                                              child: Text("Hotstar",style: TextStyle(fontSize: 10),
                                              ),),
                                            ],
                                          ),
                                          ],)
                                        ),



                                        // sabme ooper vaala copy paste krrna hai abhi//
                                      Image.asset('assets/drive.png'),
                                      Image.asset('assets/cl.png'),
                                      Image.asset('assets/share.png'),
                                      Image.asset('assets/Gpay.png'),
                                      Image.asset('assets/download-app.png'),           
          ],
          ),
          ),
   ],
  ),
    );

  }
}