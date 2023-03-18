import 'package:stacked_counter_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:stacked_counter_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:stacked_counter_app/ui/views/home/home_view.dart';
import 'package:stacked_counter_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_counter_app/ui/views/counter/counter_view.dart';
import 'package:stacked_counter_app/ui/views/login/login_view.dart';
import 'package:stacked_counter_app/services/authentication_service.dart';
import 'package:stacked_counter_app/ui/views/text_form/text_form_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: CounterView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: TextFormView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthenticationService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
