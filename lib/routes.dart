import 'package:flutter/cupertino.dart';
import 'package:getx/view/animations.dart';
import 'package:getx/view/login_page.dart';
import 'package:getx/view/signup_page.dart';


Map<String, Widget Function(BuildContext context)> routes = {
  login: (context) => const LoginPage(),
  animation  : (context) => const Animations(),
signup: (context) => const SignUpPage(),
// welcome: (context) =>  WelcomePage(email: '',),
};
const login = '/loginPage';
const signup = '/signup';
const welcome = '/welcome';
const animation = '/animation';
