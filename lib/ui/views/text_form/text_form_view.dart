import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_counter_app/ui/views/text_form/text_form_view.form.dart';
import 'text_form_viewmodel.dart';
import 'package:stacked/stacked_annotations.dart';

// TODO: Reiew Form Validators | We didn't get that to work
@FormView(
  fields: [
    FormTextField(
      name: 'textForm',
      validator: TextFormValidators.valifdateText,
    ),
  ],
)
class TextFormView extends StackedView<TextFormViewModel> with $TextFormView {
  TextFormView({Key? key}) : super(key: key);
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

  @override
  void onDispose(TextFormViewModel viewModel) {
    super.onDispose(viewModel);
    disposeForm();
    debugPrintStack();
  }
}

// class TextFormValidators {
//   static String? valifdateText(String? value) {
//     if (isEmpty(value)) {
//       return null;
//     }
//     if (containsNumber(value!)) {
//       return noNums();
//     } else {
//       return null;
//     }
//   }
// }

class TextFormValidators {
  static String? valifdateText(String? value) {
    if (value == null) {
      return null;
    }
    if (value.contains(RegExp(r'[0-9]'))) {
      print('Contains a number');
      return 'No numbers allowed';
    }
  }
}

bool isEmpty(Object? val) => val == null ? true : false;

bool containsNumber(String text) => text.contains(
      RegExp(r'[0-9]'),
    );

String noNums() => 'No numbers allowed!';


    // if (isEmpty(value)) {
    //   return null;
    // }
    // if (containsNumber(value!)) {
    //   return noNums();
    // } else {
    //   return null;
    // }