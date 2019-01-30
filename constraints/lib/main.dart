import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  Widget printLayout(Widget child) => LayoutBuilder(builder: (context, constr) {
          print('min ${constr.smallest}');
          print('max ${constr.biggest}');
          return child; });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:
          
          // ConstrainedBox(
          //   constraints: BoxConstraints(
          //       minHeight: 200, maxHeight: 400,
          //       minWidth: 100, maxWidth: 200),
          //   child: Container(color: Colors.red))

          // printLayout(ConstrainedBox(
          //       constraints: BoxConstraints(
          //           minHeight: 200, maxHeight: 400, minWidth: 100, maxWidth: 200),
          //       child: printLayout(Container(color: Colors.red))))

          // Center(child: ConstrainedBox(
          //   constraints: BoxConstraints(
          //     minHeight: 200,
          //     maxHeight: 400,
          //     minWidth: 100,
          //     maxWidth: 200
          //   ),
          //   child: Container(color: Colors.red)
          // )),

        // Center(child: printLayout(ConstrainedBox(
        //       constraints: BoxConstraints(
        //           minHeight: 200, maxHeight: 400,
        //           minWidth: 100, maxWidth: 200),
        //       child: Container(color: Colors.red)))),
      
        Center(child: printLayout(ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 200, maxHeight: 400,
                  minWidth: 100, maxWidth: 200),
              child: Container(color: Colors.red, width: double.infinity)))),
    );
  }
}
