import 'package:flutter/material.dart';
import 'SecondScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() {
    // TODO: implement createState
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int i=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,//height=100%
        crossAxisAlignment: CrossAxisAlignment.start,//水平靠左
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,//height=100%
              children: <Widget>[
                Text("center"),
                Text("center$i"),
                MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("点击按钮"),
                  onPressed: () {
                    setState(() {
                      i++;
                    });
                  },
                ),
                MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("跳转"),
                  onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context)=>new SecondScreen()));
                  },
                )
              ],
            ),
          ),
          Container(
            height: 60.00,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Text("1"),
                ),
                Expanded(
                  flex: 1,
                  child: Text("2"),
                ),
                Expanded(
                  flex: 1,
                  child: Text("3"),
                ),
                Expanded(
                  flex: 1,
                  child: Text("4"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
