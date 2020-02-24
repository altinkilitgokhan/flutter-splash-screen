import 'package:flutter/material.dart';
import 'home_page.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);
  @override
  _State createState() => new _State();
}
class _State extends State<Splash>{
  Duration duration = const Duration(seconds: 3);

  startTimeout(){
    return new Timer(duration, handleTimeout);
  }
  void handleTimeout(){
    Navigator.pop(context);
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => home_page()),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.startTimeout();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('images/splash_logo.png'),
        ),
      ),
    );
  }
}