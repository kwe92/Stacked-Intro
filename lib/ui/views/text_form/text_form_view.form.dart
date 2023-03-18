// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String TextFormValueKey = 'textForm';

final Map<String, TextEditingController> _TextFormViewTextEditingControllers =
    {};

final Map<String, FocusNode> _TextFormViewFocusNodes = {};

final Map<String, String? Function(String?)?> _TextFormViewTextValidations = {
  TextFormValueKey: null,
};

mixin $TextFormView on StatelessWidget {
  TextEditingController get textFormController =>
      _getFormTextEditingController(TextFormValueKey);
  FocusNode get textFormFocusNode => _getFormFocusNode(TextFormValueKey);

  TextEditingController _getFormTextEditingController(String key,
      {String? initialValue}) {
    if (_TextFormViewTextEditingControllers.containsKey(key)) {
      return _TextFormViewTextEditingControllers[key]!;
    }
    _TextFormViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _TextFormViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_TextFormViewFocusNodes.containsKey(key)) {
      return _TextFormViewFocusNodes[key]!;
    }
    _TextFormViewFocusNodes[key] = FocusNode();
    return _TextFormViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormViewModel model) {
    textFormController.addListener(() => _updateFormData(model));
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated('Use syncFormWithViewModel instead.'
      'This feature was deprecated after 3.1.0.')
  void listenToFormUpdated(FormViewModel model) {
    textFormController.addListener(() => _updateFormData(model));
  }

  final bool _autoTextFieldValidation = true;
  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          TextFormValueKey: textFormController.text,
        }),
    );
    if (_autoTextFieldValidation || forceValidate) {
      _updateValidationData(model);
    }
  }

  /// Updates the fieldsValidationMessages on the FormViewModel
  void _updateValidationData(FormViewModel model) =>
      model.setValidationMessages({
        TextFormValueKey: _getValidationMessage(TextFormValueKey),
      });

  /// Returns the validation message for the given key
  String? _getValidationMessage(String key) {
    final validatorForKey = _TextFormViewTextValidations[key];
    if (validatorForKey == null) return null;
    String? validationMessageForKey =
        validatorForKey(_TextFormViewTextEditingControllers[key]!.text);
    return validationMessageForKey;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _TextFormViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _TextFormViewFocusNodes.values) {
      focusNode.dispose();
    }

    _TextFormViewTextEditingControllers.clear();
    _TextFormViewFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get textFormValue => this.formValueMap[TextFormValueKey] as String?;

  set textFormValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          TextFormValueKey: value,
        }),
    );

    if (_TextFormViewTextEditingControllers.containsKey(TextFormValueKey)) {
      _TextFormViewTextEditingControllers[TextFormValueKey]?.text = value ?? '';
    }
  }

  bool get hasTextForm =>
      this.formValueMap.containsKey(TextFormValueKey) &&
      (textFormValue?.isNotEmpty ?? false);

  bool get hasTextFormValidationMessage =>
      this.fieldsValidationMessages[TextFormValueKey]?.isNotEmpty ?? false;

  String? get textFormValidationMessage =>
      this.fieldsValidationMessages[TextFormValueKey];
  void clearForm() {
    textFormValue = '';
  }
}

extension Methods on FormViewModel {
  setTextFormValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[TextFormValueKey] = validationMessage;
}
