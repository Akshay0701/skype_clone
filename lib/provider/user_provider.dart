
import 'package:flutter/widgets.dart';
import 'package:skype_clone/models/user.dart';
import 'package:skype_clone/resources/auth_methods.dart';

class UserProvider with ChangeNotifier {
  User _user;
  // FirebaseRepository _firebaseRepository = FirebaseRepository();
    AuthMethods _authMethods = AuthMethods();

  User get getUser => _user;

  void refreshUser() async {
    User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }

}