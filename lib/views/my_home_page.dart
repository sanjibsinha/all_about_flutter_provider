import 'package:all_about_flutter_provider/models/providers/first_model_provider.dart';
import 'package:all_about_flutter_provider/models/providers/second_model_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/providers/counter_model_provider.dart';

class MyHomePage extends StatelessWidget {
  /*
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  */
  final String title = 'Using Provider Examples';

  @override
  Widget build(BuildContext context) {
    /// MyHomePage is rebuilt when counter changes
    final counter = Provider.of<CountingTheNumber>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(10.0),
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 25.0),
              textAlign: TextAlign.center,
            ),

            /// consumer or selector
            Text(
              '${counter.value}',
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () => counter.increaseValue(),
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
            SizedBox(
              height: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.red,
                  child: Consumer<FirstModelProvider>(
                    builder: (context, firstModelProvider, child) =>
                        RaisedButton(
                      child: Text(
                        'Press me!',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      onPressed: () {
                        firstModelProvider.supplyFirstData();
                      },
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.white30,
                  child: Consumer<FirstModelProvider>(
                    builder: (context, firstModelProvider, child) => Text(
                      firstModelProvider.someDate,
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.red[200],
                  child: Consumer<FirstModelProvider>(
                    builder: (context, firstModelProvider, child) =>
                        RaisedButton(
                      child: Text(
                        'Reset',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      onPressed: () {
                        firstModelProvider.clearData();
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.white30,
                  child: Consumer<SecondModelProvider>(
                    builder: (context, secondModel, child) => Text(
                      secondModel.name,
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.red[200],
                  child: Consumer<SecondModelProvider>(
                    builder: (context, secondModel, child) => RaisedButton(
                      child: Text(
                        'Get First Name',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      onPressed: () {
                        secondModel.getFirstName();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      /// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
