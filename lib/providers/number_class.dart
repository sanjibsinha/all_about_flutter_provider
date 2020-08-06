import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class NumberClass with ChangeNotifier, DiagnosticableTreeMixin {
  int _value = 0;
  int get value => _value;
  void increaseValue() {
    _value++;
    notifyListeners();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('value', value));
  }
}
