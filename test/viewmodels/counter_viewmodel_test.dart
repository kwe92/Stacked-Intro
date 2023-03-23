import 'package:flutter_test/flutter_test.dart';
import 'package:stacked_counter_app/app/app.locator.dart';
import 'package:stacked_counter_app/ui/views/counter/counter_viewmodel.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('CounterViewModel Tests -', () {
    final counterModel = CounterViewModel();
    setUp(() => registerServices());
    test('Inital Value: O', () => expect(counterModel.count, 0));
    test('Increment count: + 1', () {
      counterModel.increment();
      expect(counterModel.count, 1);
    });
    tearDown(() => locator.reset());

    test('Decrement count: - 1', () {
      counterModel.decrement();
      expect(counterModel.count, 0);
    });

    test('If count 0 Decrement does nothing', () {
      expect(counterModel.count, 0);
      counterModel.decrement();
      expect(counterModel.count, 0);
    });
  });
}
