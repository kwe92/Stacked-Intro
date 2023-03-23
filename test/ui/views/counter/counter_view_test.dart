import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stacked_counter_app/main.dart';
import 'package:stacked_counter_app/ui/views/counter/counter_view.dart';

void main() {
  testWidgets('counter view ...', (tester) async {
    await tester.pumpWidget(const MyApp());
    final incrementButton = find.byKey(CounterView.incrementButtonKey);
    expect(incrementButton, findsOneWidget);

    final decrementButton = find.byKey(CounterView.decrementButtonKey);
    expect(decrementButton, findsOneWidget);
  });
}
