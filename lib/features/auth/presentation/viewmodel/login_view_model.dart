import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_starter/features/auth/presentation/navigator/login_navigator.dart';

// Create a provider
final loginViewModelProvider =
    StateNotifierProvider<LoginViewModel, void>((ref) {
  final navigator = ref.read(loginViewNavigatorProvider);
  return LoginViewModel(navigator);
});

class LoginViewModel extends StateNotifier<void> {
  LoginViewModel(this.navigator) : super(null);

  final LoginViewNavigator navigator;

  void openRegisterView() {
    navigator.openRegisterView();
  }

  void openHomeView() {
    navigator.openHomeView();
    // Code for home view
  }

  void openBatchView() {
    navigator.openBatchView();
  }

  void openCourseView() {
    navigator.openCourseView();
  }
}
