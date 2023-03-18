import 'package:stacked/stacked.dart';
import 'package:stacked_counter_app/ui/views/text_form/text_form_view.form.dart';

class TextFormViewModel extends FormViewModel {
  String get text => hasTextForm ? textFormValue! : '-----';
}
