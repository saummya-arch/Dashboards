import 'package:flutter/material.dart';

class Shortcut extends StatefulWidget {
  @override
  _ShortcutState createState() => _ShortcutState();
}

class _ShortcutState extends State<Shortcut> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.all(5.0),
      width: 430,
      height: 400,
      decoration: BoxDecoration(
        color: Colors.grey[850],
          borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.0),
          bottomRight: Radius.circular(12.0),
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),)
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(padding: const EdgeInsets.only(right: 12,top: 40),),
            Image.asset('assets/shortcuts.png',
            width: 21,height: 21,),
            Padding(padding: const EdgeInsets.only(right: 5,top: 10),),
            Text("Shortcuts",style: TextStyle(color: Colors.white, fontSize: 17, fontFamily: 'OpenSans', fontWeight: FontWeight.w400,
            decoration: TextDecoration.none),)
          ], 
          ),
          Padding(padding: const EdgeInsets.all(10),),
          SizedBox(
                height: 330,
                child: GridView.count(
                            padding: const EdgeInsets.only(top: 20, left : 20), 
                              crossAxisSpacing: 30,
                              mainAxisSpacing: 80,
                              crossAxisCount: 3,
                              children: <Widget>[
                               // Padding(padding: const EdgeInsets.only(right: 1, top: 3),),
                                      Container(
                                        color: Colors.yellow[900],
                                        width: 60,
                                        height: 120,
                                        child: Column(
                                          verticalDirection: VerticalDirection.down,
                                          children: <Widget>[
                                            Image.asset('assets/assistant1.png', height: 60, width: 30,),
                                            Padding(padding: const EdgeInsets.only(bottom: 4.0),
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Container(
                                              child: Text("Assistant",style: TextStyle(fontSize: 10 , decoration: TextDecoration.none),
                                              ),),
                                            ],
                                          ),
                                          ],)
                                        ),
                                      Image.asset('assets/drive.png'),
                                      Image.asset('assets/cl.png'),
                                      Image.asset('assets/share.png'),
                                      Image.asset('assets/Gpay.png'),
                                      Image.asset('assets/download-app.png'),           
              ],
          ),
          ),
        ]
      ),
    );
  }
}