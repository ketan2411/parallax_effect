import 'package:flutter/material.dart';
import 'package:parallax/parallax.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Parllax Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Parallax(
          height: 400,
          width: 400,
          enableDrag: true,
          items: List.generate(
              5,
              (index) => ParallaxItem(
                  factor: ParallaxFactor(x: 0.05 * index, y: 0.05 * index),
                  rotationFactor: ParallaxFactor(x: 0, y: 0.05 * index),
                  child:
                      Container(height: 50, width: 50, color: Colors.green))),
        ));
  }
}
