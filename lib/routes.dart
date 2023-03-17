import 'package:flutter/cupertino.dart';
import 'package:getx/animations.dart';
import 'package:getx/login_page.dart';
import 'package:getx/signup_page.dart';
import 'package:getx/welcome_page.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  login: (context) => const LoginPage(),
  animation  : (context) => const Animations(),
signup: (context) => const SignUpPage(),
welcome: (context) => const WelcomePage(),
};
const login = '/loginPage';
const signup = '/signup';
const welcome = '/welcome';
const animation = '/animation';
