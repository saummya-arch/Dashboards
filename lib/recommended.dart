import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Recommended extends StatefulWidget {
  @override
  _RecommendedState createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {

  String hotstarurl = '';
  String instaurl = '';
  String lifeafterrurl = '';
  String netflixurl = '';
  String primeurl = '';
  String whatsappurl = '';
  String snapurl = '';
  String telegramurl = '';
  String pubgurl = '';


  @override
  Widget build(BuildContext context) {
    return Container(
   // margin: const EdgeInsets.all(10.0),
   // color: Colors.greenAccent,
    width: 430.0,
    height: 580.0,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(12.0),
    bottomRight: Radius.circular(12.0),
    topLeft: Radius.circular(12.0),
    topRight: Radius.circular(12.0),
    ),
    color: Colors.grey[850],
  ),
  child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(padding: const EdgeInsets.only(right: 12,top: 40),),
            Image.asset('assets/recommendation1.png',
            width: 21,height: 21,),
            Padding(padding: const EdgeInsets.only(right: 5,top: 10),),
            Text("Shortcuts",style: TextStyle(color: Colors.white, fontSize: 17, fontFamily: 'OpenSans', fontWeight: FontWeight.w400,
            decoration: TextDecoration.none),)
          ], 
          ),
          Padding(padding: const EdgeInsets.all(10),),
          SizedBox(
                height: 510,
                child: GridView.count(
                            padding: const EdgeInsets.only(top: 3, left : 20), 
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 60,
                              crossAxisCount: 3,
                              children: <Widget>[
                               // HOTSTAR
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
                                            onPressed: _launchhotstarURL,
                                              child: Column(
                                              verticalDirection: VerticalDirection.down,
                                              children: <Widget>[
                                                Padding(padding: const EdgeInsets.only(top: 15, right: 28),
                                                ),
                                                Image.asset('assets/hotstar.png', height: 60, width: 70, ),
                                                Padding(padding: const EdgeInsets.only(bottom: 7),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  
                                                  Container(
                                                    
                                                  child: Text(" Hotstar",style: TextStyle(fontSize: 10 , decoration: TextDecoration.none),
                                                  ),),
                                                ],
                                              ),
                                              ],
                                              ),
                                          ),
                                        ),
                                        ),
                                        //INSTA
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
                                            onPressed: _launchinstaURL,
                                              child: Column(
                                              verticalDirection: VerticalDirection.down,
                                              children: <Widget>[
                                                Padding(padding: const EdgeInsets.only(top: 15, right: 28),
                                                ),
                                                Image.asset('assets/insta.png', height: 60, width: 70, ),
                                                Padding(padding: const EdgeInsets.only(bottom: 7),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  
                                                  Container(
                                                    
                                                  child: Text(" Instagram",style: TextStyle(fontSize: 10 , decoration: TextDecoration.none),
                                                  ),),
                                                ],
                                              ),
                                              ],
                                              ),
                                          ),
                                        ),
                                        ),
                                       //LIFE AFTER
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
                                            onPressed: _launchlifeafterURL,
                                              child: Column(
                                              verticalDirection: VerticalDirection.down,
                                              children: <Widget>[
                                                Padding(padding: const EdgeInsets.only(top: 15, right: 28),
                                                ),
                                                Image.asset('assets/lifeafter.png', height: 60, width: 70, ),
                                                Padding(padding: const EdgeInsets.only(bottom: 7),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  
                                                  Container(
                                                    
                                                  child: Text(" Life After",style: TextStyle(fontSize: 10 , decoration: TextDecoration.none),
                                                  ),),
                                                ],
                                              ),
                                              ],
                                              ),
                                          ),
                                        ),
                                        ),
                                        //NETFLIX
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
                                            onPressed: _launchnetflixURL,
                                              child: Column(
                                              verticalDirection: VerticalDirection.down,
                                              children: <Widget>[
                                                Padding(padding: const EdgeInsets.only(top: 15, right: 28),
                                                ),
                                                Image.asset('assets/netflix.png', height: 60, width: 70, ),
                                                Padding(padding: const EdgeInsets.only(bottom: 7),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  
                                                  Container(
                                                    
                                                  child: Text("Netflix",style: TextStyle(fontSize: 10 , decoration: TextDecoration.none),
                                                  ),),
                                                ],
                                              ),
                                              ],
                                              ),
                                          ),
                                        ),
                                        ),
                                      //PRIME
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
                                            onPressed: _launchprimeURL,
                                              child: Column(
                                              verticalDirection: VerticalDirection.down,
                                              children: <Widget>[
                                                Padding(padding: const EdgeInsets.only(top: 15, right: 28),
                                                ),
                                                Image.asset('assets/prime.png', height: 60, width: 70, ),
                                                Padding(padding: const EdgeInsets.only(bottom: 7),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  
                                                  Container(
                                                    
                                                  child: Text(" Amazon Prime",style: TextStyle(fontSize: 10 , decoration: TextDecoration.none),
                                                  ),),
                                                ],
                                              ),
                                              ],
                                              ),
                                          ),
                                        ),
                                        ),
                                        //pubg
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
                                            onPressed: _launchwhatsappURL,
                                              child: Column(
                                              verticalDirection: VerticalDirection.down,
                                              children: <Widget>[
                                                Padding(padding: const EdgeInsets.only(top: 15, right: 28),
                                                ),
                                                Image.asset('assets/whatsapp.png', height: 60, width: 70, ),
                                                Padding(padding: const EdgeInsets.only(bottom: 7),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  
                                                  Container(
                                                    
                                                  child: Text(" WhatsApp",style: TextStyle(fontSize: 10 , decoration: TextDecoration.none),
                                                  ),),
                                                ],
                                              ),
                                              ],
                                              ),
                                          ),
                                        ),
                                        ),       
                                        //SNAPCHAT 
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
                                            onPressed: _launchsnapURL,
                                              child: Column(
                                              verticalDirection: VerticalDirection.down,
                                              children: <Widget>[
                                                Padding(padding: const EdgeInsets.only(top: 15, right: 28),
                                                ),
                                                Image.asset('assets/snap.png', height: 60, width: 70, ),
                                                Padding(padding: const EdgeInsets.only(bottom: 7),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  
                                                  Container(
                                                    
                                                  child: Text(" Snapchat",style: TextStyle(fontSize: 10 , decoration: TextDecoration.none),
                                                  ),),
                                                ],
                                              ),
                                              ],
                                              ),
                                          ),
                                        ),
                                        ), 
                                        //TELEGRAM
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
                                            onPressed: _launchtelegramURL,
                                              child: Column(
                                              verticalDirection: VerticalDirection.down,
                                              children: <Widget>[
                                                Padding(padding: const EdgeInsets.only(top: 15, right: 28),
                                                ),
                                                Image.asset('assets/telegram.png', height: 60, width: 70, ),
                                                Padding(padding: const EdgeInsets.only(bottom: 7),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  
                                                  Container(
                                                    
                                                  child: Text(" Telegrma",style: TextStyle(fontSize: 10 , decoration: TextDecoration.none),
                                                  ),),
                                                ],
                                              ),
                                              ],
                                              ),
                                          ),
                                        ),
                                        ),  
                                        //PUBG       
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
                                            onPressed: _launchpubgURL,
                                              child: Column(
                                              verticalDirection: VerticalDirection.down,
                                              children: <Widget>[
                                                Padding(padding: const EdgeInsets.only(top: 15, right: 28),
                                                ),
                                                Image.asset('assets/pubg.png', height: 60, width: 70, ),
                                                Padding(padding: const EdgeInsets.only(bottom: 7),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  
                                                  Container(
                                                    
                                                  child: Text("Pubg",style: TextStyle(fontSize: 10 , decoration: TextDecoration.none),
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

_launchhotstarURL() async {
  const hotstarurl = 'https://www.hotstar.com/in';
  if (await canLaunch(hotstarurl)) {
    await launch(hotstarurl);
  } else {
    throw 'Could not launch $hotstarurl';
  }
    }

_launchinstaURL() async {
  const instaurl = 'https://www.instagram.com/?hl=en';
  if (await canLaunch(instaurl)) {
    await launch(instaurl);
  } else {
    throw 'Could not launch $instaurl';
  }
    }

_launchlifeafterURL() async {
  const lifeafterurl = 'http://www.lifeafter.game/';
  if (await canLaunch(lifeafterurl)) {
    await launch(lifeafterurl);
  } else {
    throw 'Could not launch $lifeafterurl';
  }
    }

_launchnetflixURL() async {
  const netflixurl = 'https://www.netflix.com/';
  if (await canLaunch(netflixurl)) {
    await launch(netflixurl);
  } else {
    throw 'Could not launch $netflixurl';
  }
    }

_launchprimeURL() async {
  const primeurl = 'https://www.primevideo.com/';
  if (await canLaunch(primeurl)) {
    await launch(primeurl);
  } else {
    throw 'Could not launch $primeurl';
  }
    }

_launchwhatsappURL() async {
  const whatsappurl = 'https://web.whatsapp.com/';
  if (await canLaunch(whatsappurl)) {
    await launch(whatsappurl);
  } else {
    throw 'Could not launch $whatsappurl';
  }
    }

_launchsnapURL() async {
  const snapurl = 'https://www.snapchat.com/l/en-gb/';
  if (await canLaunch(snapurl)) {
    await launch(snapurl);
  } else {
    throw 'Could not launch $snapurl';
  }
    }

_launchtelegramURL() async {
  const telegramurl = 'https://telegram.org/';
  if (await canLaunch(telegramurl)) {
    await launch(telegramurl);
  } else {
    throw 'Could not launch $telegramurl';
  }
    }


_launchpubgURL() async {
  const pubgurl = 'https://www.pubg.com/';
  if (await canLaunch(pubgurl)) {
    await launch(pubgurl);
  } else {
    throw 'Could not launch $pubgurl';
  }
    }                                