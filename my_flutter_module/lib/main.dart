import 'package:flutter/material.dart';
import 'package:my_flutter_plugin/my_flutter_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  MyFlutterPlugin pluginInstance = new MyFlutterPlugin();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Center(child: Text("Hello World!"),),
      ),
    );
  }
}