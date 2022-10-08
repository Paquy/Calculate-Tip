import 'package:flutter/material.dart';

class ControllerHome extends ChangeNotifier {
  double _totalValue = 0;
  double get totalValue => _totalValue;
  set totalValue(double value) {
    _totalValue = value;
    notifyListeners();
  }

  double _tipPercent = 0;
  double get tipPercent => _tipPercent;
  set tipPercent(double value) {
    _tipPercent = value;
    notifyListeners();
  }

  double get tipValue => _totalValue * _tipPercent / 100.0;

  double get valuePlusTip => _totalValue + tipValue;
}
