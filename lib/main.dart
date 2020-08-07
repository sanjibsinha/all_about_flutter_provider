import 'models/providers/first_model_provider.dart';

import 'models/providers/counter_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/providers/second_model_provider.dart';
import 'views/my_app.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => CountingTheNumber(),
      ),
      ChangeNotifierProvider(
        create: (context) => FirstModelProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => SecondModelProvider(),
      ),
    ],
    child: MyApp(),
  ));
}
