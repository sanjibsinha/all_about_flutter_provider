import 'package:flutter/widgets.dart';

class SecondModelProvider with ChangeNotifier {
  String name = 'Some Name';
  int age = 0;

  void getFirstName() {
    name = 'Json';
    print(name);
    notifyListeners();
  }
}
