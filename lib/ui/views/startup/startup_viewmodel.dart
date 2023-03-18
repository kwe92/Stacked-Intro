import 'package:stacked/stacked.dart';
import 'package:stacked_counter_app/app/app.locator.dart';
import 'package:stacked_counter_app/app/app.router.dart';
import 'package:stacked_counter_app/services/authentication_service.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final _authenticationService = locator<AuthenticationService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 3));
    _navigationService.navigateToTextFormView();
    // _authenticationService.userLoggedIn(val: true)
    //     ? _counterView()
    //     : _homeView();

    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic
  }
}

// final _navigationService = locator<NavigationService>();

// void _counterView() => _navigationService.replaceWith(Routes.counterView);

// void _homeView() => _navigationService.replaceWithHomeView();
