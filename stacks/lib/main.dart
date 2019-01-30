import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: 
        // Stack(children: [
        //   Container(color: Colors.red, width: 200, height: 300),
        //   Container(color: Colors.blue, width: 100, height: 400),
        // ])

        // Stack(children: [
        //   Container(alignment: Alignment.bottomRight,
        //     color: Colors.red, width: 200, height: 300),
        //   Container(color: Colors.blue, width: 100, height: 400),
        // ])

        // Stack(children: [
        //   Positioned(bottom: 0, right: 0,
        //     child: Container(color: Colors.red, width: 200, height: 300)),
        //   Container(color: Colors.blue, width: 100, height: 400),
        // ])

        GridView.count(
          primary: false,
          crossAxisCount: 2,
          children: <Widget>[
            Container(color: Colors.red,),
            Container(color: Colors.green,),
            Container(color: Colors.yellow,),
            Container(color: Colors.blue,),
            Container(color: Colors.white,),
            Container(color: Colors.purple,),
            Container(color: Colors.red,),
            Container(color: Colors.green,),
            Container(color: Colors.yellow,),
            Container(color: Colors.blue,),
            Container(color: Colors.white,),
            Container(color: Colors.purple,),
          ],
        )
    );
  }
}
