import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.grey[200],
              child: Row(
                // 横に並べる
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(color: Colors.red, child: Text('first')),
                  Container(color: Colors.blue, child: Text('second')),
                  Container(color: Colors.green, child: Text('third')),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              child: Row(
                // 中央寄せ

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(color: Colors.red, child: Text('***')),
                  Container(color: Colors.blue, child: Text('中央寄せ')),
                  Container(color: Colors.green, child: Text('---')),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              color: Colors.grey[200],
              child: Row(
                // 右寄せ
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(color: Colors.red, child: Text('***')),
                  Container(color: Colors.blue, child: Text('右寄せ')),
                  Container(color: Colors.green, child: Text('---')),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              child: Row(
                // 均等配置
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(color: Colors.red, child: Text('***')),
                  Container(color: Colors.blue, child: Text('均等配置')),
                  Container(color: Colors.green, child: Text('---')),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              color: Colors.grey[200],
              child: Row(
                // 上寄せ
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(color: Colors.red, child: Text('***')),
                  Container(color: Colors.blue, child: Text('上寄せ')),
                  Container(color: Colors.green, child: Text('---')),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              child: Row(
                // 下寄せ
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(color: Colors.red, child: Text('***')),
                  Container(color: Colors.blue, child: Text('下寄せ')),
                  Container(color: Colors.green, child: Text('---')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
