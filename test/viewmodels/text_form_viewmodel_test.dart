import 'package:flutter_test/flutter_test.dart';
import 'package:stacked_counter_app/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('TextFormViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
