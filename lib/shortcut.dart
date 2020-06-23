import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Shortcut extends StatefulWidget {
  @override
  _ShortcutState createState() => _ShortcutState();
}

class _ShortcutState extends State<Shortcut> {

TextEditingController _controller;
String assistanturl = '';
String driveurl = '';
String cacheurl = '';
String shareurl = '';
String payurl = '';
String downloadurl = '';

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
                height: 340,
                child: GridView.count(
                            padding: const EdgeInsets.only(top: 3, left : 20), 
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 60,
                              crossAxisCount: 3,
                              children: <Widget>[
                               // GOOGLE ASSISTANT
                                      Container(
                                        color: Colors.grey[850],
                                        width: 60,
                                        height: 115,
                                        child: SizedBox(
                                              child: RaisedButton(
                                             color: Colors.grey[850],
                                             shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(25.0),
                                             side: BorderSide(color: Colors.white38)
                                            ),
                                            onPressed: _launchassistantURL,
                                              child: Column(
                                              verticalDirection: VerticalDirection.down,
                                              children: <Widget>[
                                                Padding(padding: const EdgeInsets.only(top: 15, right: 28),
                                                ),
                                                Image.asset('assets/assistant2.png', height: 60, width: 70, ),
                                                Padding(padding: const EdgeInsets.only(bottom: 7),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  
                                                  Container(
                                                    
                                                  child: Text(" Google Assistant",style: TextStyle(fontSize: 10 , decoration: TextDecoration.none),
                                                  ),),
                                                ],
                                              ),
                                              ],
                                              ),
                                          ),
                                        ),
                                        ),
                                        //GOOGLE DRIVE
                                        Container(
                                        color: Colors.grey[850],
                                        width: 60,
                                        height: 115,
                                        child: SizedBox(
                                              child: RaisedButton(
                                             color: Colors.grey[850],
                                             shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(25.0),
                                             side: BorderSide(color: Colors.white38)
                                            ),
                                            onPressed: _launchdriveURL,
                                              child: Column(
                                              verticalDirection: VerticalDirection.down,
                                              children: <Widget>[
                                                Padding(padding: const EdgeInsets.only(top: 15, right: 28),
                                                ),
                                                Image.asset('assets/drive.png', height: 60, width: 70, ),
                                                Padding(padding: const EdgeInsets.only(bottom: 7),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  
                                                  Container(
                                                    
                                                  child: Text(" Google Drive",style: TextStyle(fontSize: 10 , decoration: TextDecoration.none),
                                                  ),),
                                                ],
                                              ),
                                              ],
                                              ),
                                          ),
                                        ),
                                        ),
                                       //CLEAR CACHE
                                       Container(
                                        color: Colors.grey[850],
                                        width: 60,
                                        height: 115,
                                        child: SizedBox(
                                              child: RaisedButton(
                                             color: Colors.grey[850],
                                             shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(25.0),
                                             side: BorderSide(color: Colors.white38)
                                            ),
                                            onPressed: _launchcacheURL,
                                              child: Column(
                                              verticalDirection: VerticalDirection.down,
                                              children: <Widget>[
                                                Padding(padding: const EdgeInsets.only(top: 15, right: 28),
                                                ),
                                                Image.asset('assets/cl.png', height: 60, width: 70, ),
                                                Padding(padding: const EdgeInsets.only(bottom: 7),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  
                                                  Container(
                                                    
                                                  child: Text(" Clear Cache",style: TextStyle(fontSize: 10 , decoration: TextDecoration.none),
                                                  ),),
                                                ],
                                              ),
                                              ],
                                              ),
                                          ),
                                        ),
                                        ),
                                        //share files
                                      Container(
                                        color: Colors.grey[850],
                                        width: 60,
                                        height: 115,
                                        child: SizedBox(
                                              child: RaisedButton(
                                             color: Colors.grey[850],
                                             shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(25.0),
                                             side: BorderSide(color: Colors.white38)
                                            ),
                                            onPressed: _launchshareURL,
                                              child: Column(
                                              verticalDirection: VerticalDirection.down,
                                              children: <Widget>[
                                                Padding(padding: const EdgeInsets.only(top: 15, right: 28),
                                                ),
                                                Image.asset('assets/share.png', height: 60, width: 70, ),
                                                Padding(padding: const EdgeInsets.only(bottom: 7),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  
                                                  Container(
                                                    
                                                  child: Text("Mi Share Files",style: TextStyle(fontSize: 10 , decoration: TextDecoration.none),
                                                  ),),
                                                ],
                                              ),
                                              ],
                                              ),
                                          ),
                                        ),
                                        ),
                                      //Google Pay
                                      Container(
                                        color: Colors.grey[850],
                                        width: 60,
                                        height: 115,
                                        child: SizedBox(
                                              child: RaisedButton(
                                             color: Colors.grey[850],
                                             shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(25.0),
                                             side: BorderSide(color: Colors.white38)
                                            ),
                                            onPressed: _launchpayURL,
                                              child: Column(
                                              verticalDirection: VerticalDirection.down,
                                              children: <Widget>[
                                                Padding(padding: const EdgeInsets.only(top: 15, right: 28),
                                                ),
                                                Image.asset('assets/Gpay.png', height: 60, width: 70, ),
                                                Padding(padding: const EdgeInsets.only(bottom: 7),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  
                                                  Container(
                                                    
                                                  child: Text(" Google Pay",style: TextStyle(fontSize: 10 , decoration: TextDecoration.none),
                                                  ),),
                                                ],
                                              ),
                                              ],
                                              ),
                                          ),
                                        ),
                                        ),
                                        //Downloads
                                      Container(
                                        color: Colors.grey[850],
                                        width: 60,
                                        height: 115,
                                        child: SizedBox(
                                              child: RaisedButton(
                                             color: Colors.grey[850],
                                             shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(25.0),
                                             side: BorderSide(color: Colors.white38)
                                            ),
                                            onPressed: _launchdownloadURL,
                                              child: Column(
                                              verticalDirection: VerticalDirection.down,
                                              children: <Widget>[
                                                Padding(padding: const EdgeInsets.only(top: 15, right: 28),
                                                ),
                                                Image.asset('assets/download-app.png', height: 60, width: 70, ),
                                                Padding(padding: const EdgeInsets.only(bottom: 7),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  
                                                  Container(
                                                    
                                                  child: Text(" Downloads",style: TextStyle(fontSize: 10 , decoration: TextDecoration.none),
                                                  ),),
                                                ],
                                              ),
                                              ],
                                              ),
                                          ),
                                        ),
                                        ),        
              ],
          ),
          ),
        ]
      ),
    );
  }
}

_launchassistantURL() async {
  const assistanturl = 'https://assistant.google.com/#!?modal_active=none';
  if (await canLaunch(assistanturl)) {
    await launch(assistanturl);
  } else {
    throw 'Could not launch $assistanturl';
  }
    }

_launchdriveURL() async {
  const driveurl = 'https://www.google.com/drive/';
  if (await canLaunch(driveurl)) {
    await launch(driveurl);
  } else {
    throw 'Could not launch $driveurl';
  }
    }    

_launchcacheURL() async {
  const cacheurl = 'https://www.atlassian.com/software/statuspage?&aceid=&adposition=&adgroup=101428756214&campaign=10299319854&creative=442076513956&device=c&keyword=clear%20cache&matchtype=e&network=g&placement=&ds_kids=p54973716844&ds_e=GOOGLE&ds_eid=700000001756552&ds_e1=GOOGLE&gclid=EAIaIQobChMIz9KDtaOT6gIVz38rCh3RUQM0EAAYASAAEgKAo_D_BwE&gclsrc=aw.ds';
  if (await canLaunch(cacheurl)) {
    await launch(cacheurl);
  } else {
    throw 'Could not launch $cacheurl';
  }
    }    

_launchshareURL() async {
  const shareurl = 'https://in.c.mi.com/thread-2030637-1-0.html';
  if (await canLaunch(shareurl)) {
    await launch(shareurl);
  } else {
    throw 'Could not launch $shareurl';
  }
    }

_launchpayURL() async {
  const payurl = 'https://pay.google.com/intl/en_in/about/';
  if (await canLaunch(payurl)) {
    await launch(payurl);
  } else {
    throw 'Could not launch $payurl';
  }
    }

_launchdownloadURL() async {
  const downloadurl = 'https://chrome.google.com/webstore/detail/downloads/kmeimggcacadlbnpfccpndimcapidlcl?hl=en';
  if (await canLaunch(downloadurl)) {
    await launch(downloadurl);
  } else {
    throw 'Could not launch $downloadurl';
  }
    }