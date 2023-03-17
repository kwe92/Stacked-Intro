import 'package:stacked/stacked.dart';

class CounterViewModel extends BaseViewModel {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    rebuildUi();
  }

  void decrement() {
    if (_count > 0) {
      _count--;
      rebuildUi();
    }
  }
}
