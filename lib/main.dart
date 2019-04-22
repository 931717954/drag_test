import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "a",
      home: new DragApp(),
    );
  }


}
class DragApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _DragAppState();

}
class _DragAppState extends State<DragApp>{
  double _top = 0.0;
  double _left = 0.0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Positioned(

          top: _top,
          left: _left,
          child: GestureDetector(
            child: CircleAvatar(
              child: Text("a"),
            ),

          onPanUpdate: (DragUpdateDetails detail)=>{
            setState((){
              _left += detail.delta.dx;
              _top += detail.delta.dy;

            })
            },
          ),

          ),

    ]);


  }


}