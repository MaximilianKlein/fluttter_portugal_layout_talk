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
        // ListView(
        //   children: [
        //     Container(color: Colors.blue, width: 100, height: 200),
        //     Container(color: Colors.red, height: 4,),
        //     Container(color: Colors.green, width: 200, height: 700),
        //   ]
        // )

        // Column(
        //   children: [
        //     Container(color: Colors.blue, width: 100, height: 200),
        //     Container(color: Colors.red),
        //     Container(color: Colors.green, width: 200, height: 700),
        //   ]
        // )

        // Column(
        //   children: [
        //     Container(color: Colors.blue, width: 100, height: 200),
        //     Expanded(child: Container(color: Colors.red)),
        //     Container(color: Colors.green, width: 200, height: 400),
        //   ]
        // )

        // Column(
        //   children: [
        //     Expanded(flex: 2, child: Container(color: Colors.blue)),
        //     Expanded(child: Container(color: Colors.red)),
        //   ]
        // )

        // Column(
        //   children: [
        //     Flexible(child: Container(color: Colors.blue, height: 50)),
        //     Expanded(child: Container(color: Colors.red, height: 50)),
        //   ]
        // )

        // Column(
        //   children: [
        //     Flexible(child: Container(color: Colors.blue, height: 50)),
        //     Expanded(child: Container(color: Colors.red, height: 50)),
        //     Flexible(child: Container(color: Colors.blue)),
        //   ]
        // )


        // Row(
        //   children: [
        //     Expanded(child: Column(
        //       children: [
        //         Flexible(child: Container(color: Colors.blue, height: 50)),
        //         Expanded(child: Container(color: Colors.red, height: 50)),
        //       ]
        //     )),

        //     Expanded(child: Column(
        //       children: [
        //         Flexible(child: Container(color: Colors.blue, height: 50)),
        //         Expanded(child: Container(color: Colors.red, height: 50)),
        //         Flexible(child: Container(color: Colors.blue)),
        //       ]
        //     ))
        // ])
      ,
    );
  }
}
