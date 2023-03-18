import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_counter_app/ui/views/counter/counter_view.dart';

import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) =>
      const CounterView();

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
