import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/counter_class.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  /*
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  */

  @override
  Widget build(BuildContext context) {
    /// MyHomePage is rebuilt when counter changes
    final counter = Provider.of<CountingTheNumber>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Using Provider Example One'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),

            /// consumer or selector
            Text(
              '${counter.value}',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              onPressed: () => counter.incrementTheValue(),
              child: Text(
                'Increase',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              onPressed: () => counter.decreaseValue(),
              child: Text(
                'Decrease',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),

      /// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
