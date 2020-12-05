
import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:quizzler/retry.dart';
// import 'quiz_brain.dart';
import 'dart:ui';


void main() {
  runApp(SplashScreen());
}
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 6),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) =>DiceeApp ())));
  } //<- Creates an object that fetches an image.
  // var image = new Image(
  //     image: AssetImage(
  //         'asset/quiz.png'),
  //     height:300);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        gradient:  LinearGradient(
        begin: Alignment.topCenter,
        colors: [
        Colors.green,
        Colors.black,
        Colors.green,
        ]
    ),
        ),

        child: Column(
          children: <Widget>[
            Image(
                image: AssetImage(
                    'images/download (1).png'),
                height:300),
            Text("Ahsan iqbal ",style:TextStyle(fontSize: 30,color: Colors.blue)),
            SizedBox(height: 5,),
            Text(" sp17-bcs-044",style:TextStyle(fontSize: 30,color: Colors.blue)),

          ],
        )
    );
  }
}


class DiceeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,

        child: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue[800],// status bar color
            title: Text('DiceGame APP',style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold,fontSize:50,),),
            bottom: TabBar(
              tabs: [
                Tab(text: "DiceApp"),
                Tab(text: "Contact Us"),
              ],
            ),
          ),
          body: TabBarView(

            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      onPressed: () {},
                      textColor: Colors.redAccent,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Colors.green,
                              Colors.black,
                              Colors.green,                            ],
                          ),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child:
                        const Text('simple button', style: TextStyle(fontSize:30,)),
                      ),
                    ),
                    SizedBox(height: 70,),
                    // SizedBox(height: 2,),
                    RaisedButton(
                      onPressed: () {},
                      textColor: Colors.redAccent,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[

                              Colors.green,
                              Colors.black,
                              Colors.green,
                            ],
                          ),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child:
                        const Text('Hard button', style: TextStyle(fontSize: 30,)),
                      ),
                    ),
                  ],),
              ),
              Text('Contact Page (Later will be change)'),
            ],
          ),
        ),
      ),
    );
  }
}