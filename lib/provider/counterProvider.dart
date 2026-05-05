import 'package:flutter/material.dart';

class counter1 with ChangeNotifier {
  double _count = 0;

  double get count => _count;

  Color _color = Colors.green;

  Color get color => _color;

  void changeColor(Color color) {
    _color = color;
    notifyListeners();
  }

  void increment() {
    _count += 10;
    notifyListeners();
  }

  void decrement() {
    _count -= 10;
    notifyListeners();
  }
}
