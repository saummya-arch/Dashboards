import 'package:flutter/material.dart';

class AdvancedTools extends StatefulWidget {
  @override
  _AdvancedToolsState createState() => _AdvancedToolsState();
}

class _AdvancedToolsState extends State<AdvancedTools> {
 List<Offset> _points = <Offset>[];
 
  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.black,
  child: Container(
  //  margin: const EdgeInsets.all(15.0),
    width: 360.0,
    height: 700.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.grey[850]
    ),
    child: new GestureDetector(
          onPanUpdate: (DragUpdateDetails details) {
            setState(() {
              RenderBox object = context.findRenderObject();
              Offset _localPosition =
                  object.globalToLocal(details.globalPosition);
              _points = new List.from(_points)..add(_localPosition);
            });
          },
          onPanEnd: (DragEndDetails details) => _points.add(null),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
               Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(padding: const EdgeInsets.only(right: 5,top: 10),),
            Image.asset('assets/draw1.png',
            width: 15,height: 15,),
            Padding(padding: const EdgeInsets.only(right: 5,top: 10),),
            Text("Draw It Notes",style: TextStyle(color: Colors.white, fontSize: 15,
            decoration: TextDecoration.none),),
            Padding(padding: const EdgeInsets.only(right: 240),),
            IconButton(icon: Icon(Icons.delete,color: Colors.grey, size: 20.0,),
            onPressed: () => _points.clear(),
         ),
          ], 
          ),
              CustomPaint(
                painter: new Signature(points: _points),
                size: Size.infinite,
              ),
            ],
          )
     //     onDoubleTap: () => _points.clear(),
        ),
        ),
      );
  }
}

class Signature extends CustomPainter {
  List<Offset> points;

  Signature({this.points});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.white
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i], points[i + 1], paint);
      }
    }
  }

  @override
  bool shouldRepaint(Signature oldDelegate) => oldDelegate.points != points;
}