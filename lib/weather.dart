import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {

  final String url = "https://api.openweathermap.org/data/2.5/weather?q=New%20Delhi&units=metric&appid=e46f94d3b8e95b838477bf9cba05fa36";

  var temp;
  var now = new DateTime.now();


  Future getWeather () async {
    http.Response response = await http.get(url);
    var result = jsonDecode(response.body);
    setState(() {
      this.temp = result['main']['temp'];
    });
  }

   @override
  void initState(){
    super.initState();
    this.getWeather();
  }

 // Future<String> getJsonData() async {
 //   var response = await http.get(
  //    Uri.encodeFull(url),
   ///   headers: {"Accept": "application/json"}
 //   );
 //  print(response.body); 
  //  setState(() {
  //  var convertDatatoJson = json.decode(response.body);
  //    data = convertDatatoJson['main'];
 //   });

 //   return "Success"; 
 // }

  @override
  Widget build(BuildContext context) {
    return  Container(
    margin: const EdgeInsets.only(top: 20),
    width: 360,
    height: 100.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.grey[850],
      ),
    child: Row(
     // mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        //1
        Padding(padding: const EdgeInsets.only(right: 10),),
        //2
        Image.asset('assets/weather.png', width: 40,height: 65,),
        //3
        Padding(padding: const EdgeInsets.only(top: 15,right: 6),),
        //4
        Column(
          children: <Widget>[
             Padding(padding: const EdgeInsets.only(top: 20),
          ),
            Text(
              temp != null ? temp.toString() + "\u00B0" : "Loading", 
              style: TextStyle(fontSize: 26,color: Colors.white,decoration: TextDecoration.none),),
              Padding(padding: const EdgeInsets.only(top: 3.0),),
            Text(now.toString().substring(0,10), style: TextStyle(fontSize: 12,color: Colors.white,decoration: TextDecoration.none),)
           ],
        ),
        //5
       Padding(padding: const EdgeInsets.only(right: 250),),
        //6
        Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.more_vert,
              color: Colors.white,
                size: 27
            ),
            //Padding(padding: const EdgeInsets.only(bottom: 9) ,),
             Icon(
              Icons.settings,
              color: Colors.white,
                size: 22,
            )
          ],
        )
      ],
    ),
  );
  }
}

























//  class Weather1 extends StatelessWidget {
//    final Map<String, dynamic> data;
//    Weather1(this.data);
//    Widget build(BuildContext context) {
//      double temp = data['main']['temp'];
//      return new Text(
//        '${temp.toStringAsFixed(1)} °C',
//        style: TextStyle(fontSize: 25, color: Colors.white),
//      );
//    }
//  }




// class Weather extends StatefulWidget {
//   @override
//   _WeatherState createState() => _WeatherState();
// }

// class _WeatherState extends State<Weather> {
// Future<http.Response> _response;

//   void initState() {
//     super.initState();
//     _refresh();
//   }

//   void _refresh() {
//     setState(() {
//       _response = http.get(
//         'https://api.openweathermap.org/data/2.5/weather?q=New%20Delhi&appid=e46f94d3b8e95b838477bf9cba05fa36'
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//     margin: const EdgeInsets.all(10.0),
//     //color: Colors.redAccent,
//     width: 350.0,
//     height: 80.0,
//     decoration: BoxDecoration(
//     color: Colors.redAccent,
//     borderRadius: BorderRadius.only(
//     bottomLeft: Radius.circular(9.0),
//     bottomRight: Radius.circular(9.0),
//     topLeft: Radius.circular(9.0),
//     topRight: Radius.circular(9.0),)
//     ),
//    // color: Colors.redAccent,
  
  
//   child: Row(
//     children: <Widget>[
//       //1
//     Padding(padding: const EdgeInsets.only(right: 10),),
//     //2
//     Image.asset('assets/weather.png', width: 35, height: 35,),
//     //3
//     Padding(padding: const EdgeInsets.only(right: 5),
//     ),
//     //4
//     Column(
//      children: <Widget>[
//     //5
//         Center(
//         child: new FutureBuilder(
//           future: _response,
//           builder: (BuildContext context, AsyncSnapshot<http.Response> response) {
//             if (!response.hasData)
//               return new Text('Loading...');
//             else if (response.data.statusCode != 200) {
//               return new Text('Could not connect to weather service.');
//             } else {
//               Map<String, dynamic> json = jsonDecode(response.data.body);
//               if (json['cod'] == 200)
//                 return new Weather1(json);
//               else
//                 return new Text('Weather service error: $json.');
//             }
//           }
//         ),
//       ),
//        //6
//       // Padding(padding: const EdgeInsets.only(right: 120),
//        //),
//        //7
//        ],
//        ),
//        Padding(padding: const EdgeInsets.only(right: 120),),
//        Column(
//        children: <Widget>[
//         //8
//         Padding(padding: EdgeInsets.only(top: 2.0),
//         ),
//         //9
//        Icon(Icons.more_vert, color: Colors.blue, size: 10,
//        ),
//        //10
//        Padding(padding: const EdgeInsets.only(top: 2),),
//        Icon(Icons.settings, color: Colors.blue , size : 10),

//      ],
//     ),
//    ],
//   ),
//     );
//   }
// }