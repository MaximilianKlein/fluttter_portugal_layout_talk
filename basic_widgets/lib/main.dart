import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body:
          // Container(color: Colors.red),

          // Container(color: Colors.blue, width: 200)

          // Text('Hello Lisbon', style: TextStyle(fontSize: 40))

          // Align(alignment: Alignment.bottomLeft,
          //   child: Text('Hello Lisbon', style: TextStyle(fontSize: 40)))

          // Center(child: Text('Hello Lisbon', style: TextStyle(fontSize: 40)))

          // Center(child:
          //   Row(children: <Widget>[
          //     Expanded(child: Container(color: Colors.red, height: 100)),
          //     Expanded(child: Container(color: Colors.blue, height: 50))
          //   ],
          // ))

          Stack(children: <Widget>[
            Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.red, Colors.teal])),),
            Center(child: FractionallySizedBox(
              heightFactor: 0.5,
              widthFactor: 0.5,
              child: Container(color: Colors.blue.withAlpha(100))
            ))
          ],)
          //  
      ),
    );
  }
}
