import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_counter_app/ui/views/text_form/text_form_view.form.dart';
import 'text_form_viewmodel.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(fields: [
  FormTextField(name: 'textForm'),
])
class TextFormView extends StackedView<TextFormViewModel> with $TextFormView {
  @override
  Widget builder(
    BuildContext context,
    TextFormViewModel viewModel,
    Widget? child,
  ) {
    const gaphSmall = SizedBox(height: 8);
    const gaphMed = SizedBox(height: 12.75);
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              const Text(
                'First Stacked Form',
                style: TextStyle(fontSize: 21),
              ),
              gaphMed,
              TextFormField(
                controller: textFormController,
              ),
              gaphSmall,
              Text(viewModel.text)
            ]),
          ),
        ),
      ),
    );
  }

  @override
  void onViewModelReady(TextFormViewModel viewModel) =>
      syncFormWithViewModel(viewModel);

  @override
  TextFormViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TextFormViewModel();
}
