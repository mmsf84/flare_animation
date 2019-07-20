import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' chi',
      theme: ThemeData(        
        primarySwatch: Colors.blue,
      ),
      home: MainAnimations()
    );
  }
}

class MainAnimations extends StatefulWidget {
  @override
  MainAnimationsState createState() {
    return new MainAnimationsState();
  }
}

class MainAnimationsState extends State<MainAnimations> {
  onButtonTap(Widget page) {
    Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Animations"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: FlareActor('assets/rotates.flr',animation:'integrantes',fit:BoxFit.contain,),
        ),
      );
    
  }
}

