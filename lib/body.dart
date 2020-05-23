import 'package:flutter/material.dart';

class Body extends StatefulWidget{
  @override
  _BodyState createState()=> new _BodyState();
}

class _BodyState extends State<Body>{
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: RaisedButton(onPressed: alerte,
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

  void snack(){
    SnackBar snackBar = new SnackBar(
        content: new Text("Je suis une snack bar",
        textScaleFactor: 1.5),
      duration: new Duration(seconds: 5),
        );
    Scaffold.of(context).showSnackBar(snackBar );
  }

  Future<Null> alerte() async{
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return new AlertDialog(
          title: new Text('Ceci est une alert', textScaleFactor: 1.5),
          content: new Text("Houston nous avons un probleme"),
          contentPadding: EdgeInsets.all(5.0),
          actions: <Widget>[
            new FlatButton(onPressed: (){
              print("Abort");
              Navigator.pop(context);
            }, child: new Text('annuler',style: new TextStyle(color: Colors.red),)),
            new FlatButton(onPressed: (){
              print("proceed");
              Navigator.pop(context);
            }, child: new Text('Contunuer', style: new TextStyle(color: Colors.blue),))
          ],
        );
      }
    );
  }
}