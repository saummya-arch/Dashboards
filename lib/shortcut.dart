import 'package:flutter/material.dart';

class Shortcut extends StatefulWidget {
  @override
  _ShortcutState createState() => _ShortcutState();
}

class _ShortcutState extends State<Shortcut> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
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
              Padding(padding: const EdgeInsets.only(right: 5,top: 10),),
            Image.asset('assets/shortcuts.png',
            width: 15,height: 15,),
            Padding(padding: const EdgeInsets.only(right: 5,top: 10),),
            Text("Shortcuts",style: TextStyle(color: Colors.black, fontSize: 15,
            decoration: TextDecoration.none),)
          ], 
          ),
          Padding(padding: const EdgeInsets.all(10),),
          SizedBox(
                height: 150,
                child: GridView.count(
                              padding: const EdgeInsets.all(6),
                              crossAxisSpacing: 55,
                              mainAxisSpacing: 2,
                              crossAxisCount: 4,
                              children: <Widget>[
                                      SizedBox(
                                        width: 60,
                                        height: 60,
                                        child: Column(
                                          verticalDirection: VerticalDirection.down,
                                          children: <Widget>[
                                            Image.asset('assets/assistant1.png'),
                                            Padding(padding: const EdgeInsets.only(bottom: 4.0),
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Container(
                                              child: Text("Assistant",style: TextStyle(fontSize: 10),
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