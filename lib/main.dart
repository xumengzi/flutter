import 'package:flutter/material.dart';
import 'list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  var msg = 'hello world';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(msg),
            FlatButton(
              color: Colors.lightBlue,
              textColor: Colors.orange,
              onPressed: (){
                // setState((){
                //   this.msg = 'you clicked me';
                // });
                Navigator.push(context, MaterialPageRoute(builder:(context) {
                  return ListPage();
                }));
              },
              child: Text(
                'CLICK ME',
                style: TextStyle(
                  fontSize: 20,
                )
              )
            )
          ],
        )
      )
    );
  }
}