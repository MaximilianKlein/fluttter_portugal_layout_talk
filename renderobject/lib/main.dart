import 'package:flutter/material.dart';
import 'package:renderobject/animated_rotation.dart';
import 'package:renderobject/max_top_margin.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  bool bigFooter = false;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: MaxTopMargin(child: Text('Only moves up!'))),

                // Padding(
                //     padding: EdgeInsets.only(top: 600),
                //     child: Text('Only moves up!')),

                // Expanded(child: Padding(
                //     padding: EdgeInsets.only(top: 600),
                //     child: Text('Only moves up!'))),

                // Expanded(
                //     child: Center(child: Text('Only moves up!'))),
                
                footer()
              ]),
          floatingActionButton: _button(),
        ));
  }

  AnimatedSize footer() {
    return AnimatedSize(
                  vsync: this,
                  duration: Duration(milliseconds: 400),
                  child: Container(
                      color: Colors.green, height: bigFooter ? 400 : 200));
  }

  Widget _button() {
    return AnimatedRotation(
        duration: Duration(milliseconds: 400),
        turns: bigFooter ? 0.5 : 0,
        child: FloatingActionButton(
          child: Icon(Icons.arrow_upward, color: Colors.white),
          onPressed: () {
            setState(() {
              bigFooter = !bigFooter;
            });
          },
        ));
  }
}
