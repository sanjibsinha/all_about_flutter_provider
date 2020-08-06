import 'package:all_about_flutter_provider/providers/counter_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/first_provider_example.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => CountingTheNumber(),
      ),
    ],
    child: MyApp(),
  ));
}
