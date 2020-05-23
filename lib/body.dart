import 'package:flutter/material.dart';

class Body extends StatefulWidget{
  @override
  _BodyState createState()=> new _BodyState();
}

class _BodyState extends State<Body>{
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: RaisedButton(onPressed: pressed(),
      child: new Text(
        "Appuyer moi",
            style: new TextStyle(
               fontStyle: FontStyle.italic,
              fontSize: 20.0
            )
      ),)
      ,
    );
  }
  void pressed(){
    setState(() {
      print("object")
    });
  }
}