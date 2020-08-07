import 'package:flutter/widgets.dart';

class FirstModelProvider with ChangeNotifier {
  String someDate = 'Some Date';

  void supplyFirstData() {
    someDate = 'Data Changed!';
    print(someDate);
    notifyListeners();
  }

  void clearData() {
    someDate = 'Data Cleared!';
    print(someDate);
    notifyListeners();
  }
}
