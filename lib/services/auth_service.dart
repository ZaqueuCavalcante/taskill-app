import 'package:flutter/widgets.dart';

class AuthService extends ChangeNotifier {
  bool isAuthenticated = false;

  login() {
    isAuthenticated = true;
    debugPrint('LOGIN!');
    notifyListeners();
  }

  logout() {
    isAuthenticated = false;
    debugPrint('LOGOUT!');
    notifyListeners();
  }
}
