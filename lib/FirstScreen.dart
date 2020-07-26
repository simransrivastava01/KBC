import 'dart:async';
import 'dart:io';

import 'package:kbc/home.dart';
import 'package:kbc/instructions.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  static AudioPlayer audioPlayer = new AudioPlayer();
  AudioCache audioCache = new AudioCache(fixedPlayer: audioPlayer);

  @override
  void initState() {
    audioCache.play("KbcTheme.mp3");
    Timer(
        Duration(seconds: 6),
        () => Navigator.pushReplacement(
            context,
            new MaterialPageRoute(
               builder: (BuildContext context) => LetsPlay()
            )
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Image.asset("assets/KbcSplashScreen.jpg")));
  }
}

class LetsPlay extends StatefulWidget {
  @override
  _LetsPlayState createState() => _LetsPlayState();
}

class _LetsPlayState extends State<LetsPlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Image.network("https://th.thgim.com/entertainment/99oele/article31516935.ece/alternates/FREE_435/PTI8282018000180B"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      //child:Text("Hi "+"${user.displayName.substring(0,user.displayName.indexOf(" "))}",textScaleFactor: 2,style: TextStyle(color:Colors.white,backgroundColor: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)
                    ),
                  ),
                  RaisedButton(
                    onPressed: () => Navigator.pushReplacement(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) => MyHomePage())),
                    color: Colors.green,
                    child: Text(
                      "Play",
                      textScaleFactor: 2,
                    ),
                  ),
                  RaisedButton(
                    onPressed: instructions,
                    color: Colors.purple[200],
                    child: Text("Instructions", textScaleFactor: 2),
                  ),
                  RaisedButton(
                    onPressed: ()=>exit(0),
                    color: Colors.red,
                    child: Text("Exit", textScaleFactor: 2),
                  ),
                ]),
          ],
        ),
      ]),
      backgroundColor: Colors.lightBlue,
    );
  }

  void instructions(){
    showDialog(context: context,
    builder: (context) {
      return Instructions();
    },
    );
  }
}
