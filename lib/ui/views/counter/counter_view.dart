import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'counter_viewmodel.dart';

class CounterView extends StackedView<CounterViewModel> {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CounterViewModel viewModel,
    Widget? child,
  ) {
    const SizedBox gapH = SizedBox(height: 14.75);
    final String count = viewModel.count.toString();
    return Scaffold(
      // backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              count,
              style: const TextStyle(fontSize: 28),
            ),
            gapH,
            _IncrementButton(
              onPressed: viewModel.increment,
            ),
            gapH,
            _DecrementButton(
              onPressed: viewModel.decrement,
            )
          ],
        ),
      ),
    );
  }

  @override
  CounterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CounterViewModel();
}

class _IncrementButton extends StatelessWidget {
  final VoidCallback onPressed;
  const _IncrementButton({required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Center(child: _BaseButton(text: 'Increment', onPressed: onPressed));
}

class _DecrementButton extends StatelessWidget {
  final VoidCallback onPressed;
  const _DecrementButton({required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Center(child: _BaseButton(text: 'Decrement', onPressed: onPressed));
}

class _BaseButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const _BaseButton({required this.text, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => onPressed(),
        child: Container(
          width: 112,
          height: 48,
          decoration: BoxDecoration(
              color: Colors.purple[500],
              borderRadius: BorderRadius.circular(50)),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      );
}
