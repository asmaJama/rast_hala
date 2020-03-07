import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:pimp_my_button/pimp_my_button.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeButtonBackground(),
    );
  }
}
class ChangeButtonBackground extends StatefulWidget {
  @override
  ChangeButtonBackgroundState createState() {
    return new ChangeButtonBackgroundState();
  }
}

class ChangeButtonBackgroundState extends State<ChangeButtonBackground> {
  List<Color> colors1 = [ //Get list of colors
    Colors.white,
    Colors.green,
  ];
  int currentIndex1 = 0;
  List<Color> colors2 = [ //Get list of colors
    Colors.white,
    Colors.green,
  ];

  int currentIndex2 = 0;
  List<Color> colors3 = [ //Get list of colors
    Colors.white,
    Colors.green,
  ];

  int currentIndex3 = 0;
  List<Color> colors4 = [ //Get list of colors
    Colors.white,
    Colors.green,
  ];

  int currentIndex4 = 0;

  _onChanged() { //update with a new color when the user taps button


    //setState(() => (_currentIndex == _colorCount - 1) ? _currentIndex = 1 : _currentIndex += 1);
  }

  void home() {

  }
  void right() {

  }
  void left() {

  }
  void sound() {
    final player = AudioCache();
    player.play('d.m4a');
  }
  void   SoundParda() {
    final player = AudioCache();
    player.play('parda5.m4a');
  }
  void   SoundDarga() {
    final player = AudioCache();
    player.play('darga3.m4a');
  }
  void   Soundpanjara() {
    final player = AudioCache();
    player.play('panjara4.m4a');
  }
  void   SoundAmad() {
    final player = AudioCache();
    player.play('amad1.m4a');
  }
  ButtonParda() {
    int colorCount1 = colors1.length;

    setState(() {

      currentIndex1 = 1;

    });
  }
  ButtonAmad() {
    int colorCount4 = colors4.length;

    setState(() {
      if (currentIndex4 == colorCount4 - 1) {
        currentIndex4 = 0;
      } else {
        currentIndex4 += 1;
      }
    });
  }
  ButtonPanjara() {
    int colorCount3 = colors3.length;

    setState(() {
      if (currentIndex3 == colorCount3 - 1) {
        currentIndex3 = 0;
      } else {
        currentIndex3 += 1;
      }
    });
  }
  ButtonDarga() {
    int colorCount2 = colors2.length;

    setState(() {
      if (currentIndex2 == colorCount2 - 1) {
        currentIndex2 = 0;
      } else {
        currentIndex2 += 1;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
              children: <Widget>[
                Row(children: <Widget>[
                  Container(
                    decoration: new BoxDecoration(color: new Color(0xffD2EBF9 )),
                   child: Row(
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.fromLTRB(20.0, 10.0, 140.0, 10.0),
                          child: FlatButton(
                            child:new Container(
                              child: Image.asset('assets/home.png',width: 50,height: 50,),
                            ),
                            onPressed: () {
                              home();
                            },
                          ),),
                        new Container(
                          margin: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 10.0),
                          child: FlatButton(
                            child:new Container(
                              child: Image.asset('assets/sound.png',width: 50,height: 50,),
                            ),
                            onPressed: () {
                              sound();
                            },
                          ),
                        ),

                      ],
                    ),
                  ),

                ],),

                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 230,
                          width: 180,
                          child:   Card(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child:  Image.asset('assets/rast1.png',width: 160,height: 160,),
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child:  PimpedButton(
                                        particle: DemoParticle(),
                                        pimpedWidgetBuilder: (context, controller) {
                                          return FlatButton( child: Image.asset('assets/true.png',width: 30,height: 30,),
                                            shape: CircleBorder(),
                                            onPressed: () {
                                              controller.forward(from: 0.0);
                                              SoundDarga();
                                            },);
                                        },
                                      ),
                                    ),

                                 Expanded(
                                      child:  FlatButton(
                                        child: Image.asset('assets/false.png',width: 30,height: 30,),
                                        shape: CircleBorder(),
                                        onPressed: () {
                                          SoundDarga();
                                        },
                                      ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 230,
                          width: 180,
                          child:   Card(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child:  Image.asset('assets/hala1.png',width: 140,height: 150,),
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child:  FlatButton(
                                        child: Image.asset('assets/true.png',width: 30,height: 30,),
                                        shape: CircleBorder(),
                                        onPressed: () {
                                          SoundDarga();
                                        },
                                      ),),
                                    Expanded(
                                       child:  PimpedButton(
                                       particle: DemoParticle(),
                                       pimpedWidgetBuilder: (context, controller) {
                                        return FlatButton( child: Image.asset('assets/false.png',width: 30,height: 30,),
                                         shape: CircleBorder(),
                                           onPressed: () {
                                            controller.forward(from: 0.0);
                                                 SoundDarga();
                                                 },);
                                        },
                                       ),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),

                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 230,
                          width: 180,
                          child:   Card(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child:  Image.asset('assets/rast2.png',width: 160,height: 160,),
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child:  PimpedButton(
                                        particle: DemoParticle(),
                                        pimpedWidgetBuilder: (context, controller) {
                                          return FlatButton( child: Image.asset('assets/true.png',width: 30,height: 30,),
                                            shape: CircleBorder(),
                                            onPressed: () {
                                              controller.forward(from: 0.0);
                                              SoundDarga();
                                            },);
                                        },
                                      ),
                                    ),

                                    Expanded(
                                      child:  FlatButton(
                                        child: Image.asset('assets/false.png',width: 30,height: 30,),
                                        shape: CircleBorder(),
                                        onPressed: () {
                                          SoundDarga();
                                        },
                                      ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 230,
                          width: 180,
                          child:   Card(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child:  Image.asset('assets/rast2.png',width: 160,height: 160,),
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child:  FlatButton(
                                        child: Image.asset('assets/true.png',width: 30,height: 30,),
                                        shape: CircleBorder(),
                                        onPressed: () {
                                          SoundDarga();
                                        },
                                      ),),

                                    Expanded(
                                      child:  PimpedButton(
                                        particle: DemoParticle(),
                                        pimpedWidgetBuilder: (context, controller) {
                                          return FlatButton( child: Image.asset('assets/false.png',width: 30,height: 30,),
                                            shape: CircleBorder(),
                                            onPressed: () {
                                              controller.forward(from: 0.0);
                                              SoundDarga();
                                            },);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.fromLTRB(20.0, 100.0, 120.0, 0.0),
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/back.png',width: 50,height: 50,),
                        ),
                        onPressed: () {
                          left();
                        },
                      ),),
                    new Container(
                      margin: EdgeInsets.fromLTRB(20.0, 100.0, 10.0, 0.0),
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/next.png',width: 50,height: 50,),
                        ),
                        onPressed: () {
                          right();
                        },
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}